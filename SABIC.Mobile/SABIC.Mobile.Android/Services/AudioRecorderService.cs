using System;
using System.IO;
using System.Threading.Tasks;
using Android.Media;
using SABIC.Mobile.Droid.Services;
using SABIC.Mobile.Services;
using Xamarin.Forms;

// Register the AudioRecorderService as a dependency for Xamarin.Forms DependencyService
[assembly: Dependency(typeof(AudioRecorderService))]
namespace SABIC.Mobile.Droid.Services
{
    public class AudioRecorderService : IAudioRecorderService
    {
        private MediaRecorder _recorder;
        private string _outputFile;

        // Property to check if recording is currently in progress
        public bool IsRecording => _recorder != null;

        // Method to start audio recording
        public async Task<string> StartRecordingAsync()
        {
            string result = string.Empty;

            if (_recorder == null)
            {
                try
                {
                    // Generate a unique output file name based on the current minute
                    _outputFile = Path.Combine(Android.OS.Environment.ExternalStorageDirectory.AbsolutePath, $"recording{DateTime.Now.Minute}.mp3");

                    // Create a new MediaRecorder instance
                    _recorder = new MediaRecorder();

                    // Set the audio source to the device's microphone
                    _recorder.SetAudioSource(AudioSource.Mic);

                    // Set the output format to MPEG-4
                    _recorder.SetOutputFormat(OutputFormat.Mpeg4);

                    // Set the audio encoder to AAC
                    _recorder.SetAudioEncoder(AudioEncoder.Aac);

                    // Set the output file path
                    _recorder.SetOutputFile(_outputFile);

                    // Prepare the recorder for recording
                    _recorder.Prepare();

                    // Start recording audio
                    _recorder.Start();

                    result = $"Record saved on: {_outputFile}";
                }
                catch (Exception ex)
                {
                    result = $"Something unexpected {ex.Message}";

                    // Handle any exceptions here (e.g., microphone not supported on emulators)
                }
            }
            return result;
        }

        // Method to stop audio recording
        public async Task<string> StopRecordingAsync()
        {
            string result = string.Empty;

            if (_recorder != null)
            {
                try
                {
                    // Stop the audio recording
                    _recorder.Stop();

                    // Reset the recorder for future use
                    _recorder.Reset();

                    // Release resources associated with the recorder
                    _recorder.Release();

                    // Set the recorder to null to indicate it's no longer active
                    _recorder = null;

                    result = "Record Succesful saved";
                }
                catch (Exception ex)
                {
                    result = $"Something unexpected {ex.Message}";
                    // Handle any exceptions here (e.g., microphone not supported on emulators)
                }
            }

            return result;
        }
    }
}
