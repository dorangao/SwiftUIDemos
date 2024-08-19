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
        try? AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
        try? AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
    }

    func deactivateAudioSession() {
        try? AVAudioSession.sharedInstance().setActive(false, options: .notifyOthersOnDeactivation)
    }

    func speak(text: String, voiceIdentifier: String = "com.apple.voice.compact.en-US.Samantha") {
        configureAudioSession()

        let speechUtterance = AVSpeechUtterance(string: text)
        speechUtterance.voice = AVSpeechSynthesisVoice(identifier: voiceIdentifier) ?? AVSpeechSynthesisVoice(language: "en-US")
        speechUtterance.rate = 0.5
        speechUtterance.pitchMultiplier = 1.4
        speechUtterance.volume = 1.0

        speechSynthesizer.speak(speechUtterance)
    }

    func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didFinish utterance: AVSpeechUtterance) {
        deactivateAudioSession()
    }

    func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didCancel utterance: AVSpeechUtterance) {
        deactivateAudioSession()
    }
}