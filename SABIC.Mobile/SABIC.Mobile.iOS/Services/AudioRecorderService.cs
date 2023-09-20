using System;
using System.Threading.Tasks;
using AudioToolbox;
using AVFoundation;
using Foundation;
using SABIC.Mobile.iOS.Services;
using SABIC.Mobile.Services;
using Xamarin.Forms;

// Register the AudioRecorderService as a dependency for Xamarin.Forms DependencyService
[assembly: Dependency(typeof(AudioRecorderService))]
namespace SABIC.Mobile.iOS.Services
{
    public class AudioRecorderService : IAudioRecorderService
    {
        private AVAudioRecorder _recorder;

        // Property to check if recording is currently in progress
        public bool IsRecording => _recorder?.Recording ?? false;

        // Property to store the output file path of the recorded audio
        public string OutputFilePath { get; private set; }

        // Method to start audio recording
        public async Task<string> StartRecordingAsync()
        {
            string result = string.Empty;

            try
            {
                // Get the shared audio session instance
                var session = AVAudioSession.SharedInstance();
                NSError activationError = null;

                // Set the audio session category to Record
                session.SetCategory(AVAudioSessionCategory.Record);

                // Check for errors while setting the audio session category
                if (activationError != null)
                {
                    // Handle the activationError, if any
                    result = $"Error setting audio session category: {activationError.LocalizedDescription}";
                }

                activationError = null;

                // Activate the audio session
                session.SetActive(true, out activationError);

                // Check for errors while activating the audio session
                if (activationError != null)
                {
                    // Handle the activationError, if any
                    result = $"Error setting audio session category: {activationError.LocalizedDescription}";
                }

                // Configure audio recording settings
                var audioSettings = new AudioSettings
                {
                    Format = AudioFormatType.MPEG4AAC,
                    SampleRate = 44100.0f,
                    NumberChannels = 2,
                    AudioQuality = AVAudioQuality.High
                };

                // Define the path and filename for the recorded audio file
                var documentsFolder = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
                var fileName = "recording.aac";
                OutputFilePath = System.IO.Path.Combine(documentsFolder, fileName);

                // Create a URL from the file path
                var url = NSUrl.FromFilename(OutputFilePath);

                // Create an AVAudioRecorder instance with the specified settings and URL
                _recorder = AVAudioRecorder.Create(url, audioSettings, out NSError error);

                // Check if the recorder was successfully created
                if (_recorder != null)
                {
                    // Prepare the recorder for recording
                    _recorder.PrepareToRecord();

                    // Start recording audio
                    _recorder.Record();
                }
                result = $"Record saved on: {OutputFilePath}";
            }
            catch (Exception ex)
            {
                result = $"Something unexpected {ex.Message}";
            }

            return result;
        }

        // Method to stop audio recording
        public async Task<string> StopRecordingAsync()
        {
            string result = string.Empty;
            try
            {
                if (_recorder != null)
                {
                    // Stop the audio recording
                    _recorder.Stop();

                    // Dispose of the recorder to release resources
                    _recorder.Dispose();

                    // Set the recorder to null to indicate it's no longer active
                    _recorder = null;
                }
                result = "Record Succesful saved";
            }
            catch (Exception ex)
            {
                return result;
            }

            return result;
        }
    }
}