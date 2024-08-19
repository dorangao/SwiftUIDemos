import AVFoundation
import Combine

class TextToSpeechManager: NSObject, ObservableObject, AVSpeechSynthesizerDelegate {
    private let speechSynthesizer = AVSpeechSynthesizer()
    @Published var displayedText: String = ""
    
    override init() {
        super.init()
        speechSynthesizer.delegate = self
    }
    
    func speak(text: String, voiceIdentifier: String = "com.apple.voice.compact.en-US.Samantha") {
        let speechUtterance = AVSpeechUtterance(string: text)
        
        if let selectedVoice = AVSpeechSynthesisVoice(identifier: voiceIdentifier) {
            speechUtterance.voice = selectedVoice
        } else {
            speechUtterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        }
        
        speechUtterance.rate = 0.5
        speechUtterance.pitchMultiplier = 1.0
        speechUtterance.volume = 1.0
        
        speechSynthesizer.speak(speechUtterance)
    }
}
