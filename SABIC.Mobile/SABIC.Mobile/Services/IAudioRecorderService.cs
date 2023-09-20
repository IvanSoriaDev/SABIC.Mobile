using System;
using System.Threading.Tasks;

namespace SABIC.Mobile.Services
{
	public interface IAudioRecorderService
	{
        Task<string> StartRecordingAsync();
        Task<string> StopRecordingAsync();
        bool IsRecording { get; }
    }
}

