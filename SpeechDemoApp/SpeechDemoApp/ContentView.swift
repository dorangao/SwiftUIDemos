import SwiftUI

struct ContentView: View {
    @StateObject private var ttsManager = TextToSpeechManager()
    @StateObject private var sttManager = SpeechRecognizerManager()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("SpeechDemo")
                    .font(.largeTitle)
                    .bold()
                
                TextEditor(text: $sttManager.recognizedText)
                    .border(Color.gray, width: 1)
                    .frame(height: 150)
                    .padding()
                
                HStack(spacing: 20) {
                    Button(action: {
                        if sttManager.isRecording {
                            sttManager.stopRecording()
                        } else {
                            sttManager.requestSpeechAuthorization()
                            sttManager.startRecording()
                        }
                    }) {
                        Text(sttManager.isRecording ? "Stop Recording" : "Start Recording")
                            .padding()
                            .background(sttManager.isRecording ? Color.red : Color.green)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    
                    Button(action: {
                        ttsManager.speak(text: sttManager.recognizedText)
                    }) {
                        Text("Speak Text")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
