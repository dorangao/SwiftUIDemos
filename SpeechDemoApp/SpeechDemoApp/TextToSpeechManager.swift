import AVFoundation
import Combine

class TextToSpeechManager: NSObject, ObservableObject, AVSpeechSynthesizerDelegate {
    private let speechSynthesizer = AVSpeechSynthesizer()
    @Published var displayedText: String = ""
    
    override init() {
        super.init()
        speechSynthesizer.delegate = self
    }
    
    func configureAudioSession() {
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
        } catch {
            print("Failed to configure audio session: \(error)")
        }
    }
    
    func deactivateAudioSession() {
        do {
            try AVAudioSession.sharedInstance().setActive(false, options: .notifyOthersOnDeactivation)
        } catch {
            print("Failed to deactivate audio session: \(error)")
        }
    }
    
    func speak(text: String, voiceIdentifier: String = "com.apple.voice.compact.en-US.Samantha") {
        // Configure the audio session before speaking
        configureAudioSession()
        
        let speechUtterance = AVSpeechUtterance(string: text)
        
        if let selectedVoice = AVSpeechSynthesisVoice(identifier: voiceIdentifier) {
            speechUtterance.voice = selectedVoice
        } else {
            speechUtterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        }
        
        speechUtterance.rate = 0.5
        speechUtterance.pitchMultiplier = 1.4
        speechUtterance.volume = 1.0
        
        speechSynthesizer.speak(speechUtterance)
    }
    
    // MARK: - AVSpeechSynthesizerDelegate
    
    func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didFinish utterance: AVSpeechUtterance) {
        // Deactivate the audio session after the speech has finished
        deactivateAudioSession()
    }
    
    func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didCancel utterance: AVSpeechUtterance) {
        // Deactivate the audio session if the speech is canceled
        deactivateAudioSession()
    }
}
