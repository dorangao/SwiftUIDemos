# SwiftUI Text-to-Speech and Speech-to-Text Demo

This project demonstrates how to integrate Text-to-Speech (TTS) and Speech-to-Text (STT) capabilities in a SwiftUI application. These features enable your app to convert text into spoken words and recognize spoken words as text, creating a more interactive and accessible user experience.

## Features

- **Text-to-Speech (TTS)**: Convert any text into spoken audio using the device's built-in speech synthesis capabilities.
- **Speech-to-Text (STT)**: Convert spoken words into text using the device's speech recognition capabilities.
- **Interactive Demo**: A SwiftUI interface that allows users to input text, have it spoken aloud, and dictate speech to see it transcribed in real-time.

## Project Structure

- **ContentView.swift**: The main view where users can interact with TTS and STT features.
- **TextToSpeechManager.swift**: Manages the conversion of text to speech.
- **SpeechRecognitionManager.swift**: Manages the conversion of speech to text.

## Permissions

To enable speech recognition and microphone access, make sure to include the appropriate keys in your `Info.plist` file:

- **NSSpeechRecognitionUsageDescription**: This key explains why your app needs access to speech recognition.
- **NSMicrophoneUsageDescription**: This key explains why your app needs access to the microphone.

## Getting Started

### Prerequisites

- Xcode 15 or later
- iOS 17.0 or later

### Installation

1. Clone the repository:
    ```sh
    git clone https://github.com/dorangao/SwiftUIDemos/tree/main/SpeechDemoApp
    ```
2. Open the project in Xcode:
    ```sh
    cd SwiftUITextSpeechDemo
    open SwiftUITextSpeechDemo.xcodeproj
    ```

### Running the Project

1. Select your target device (iPhone or iPad simulator) in Xcode.
2. Click the "Run" button (or press Command + R) to build and run the project.

## Benefits of Text and Speech Capabilities

The integration of Text-to-Speech and Speech-to-Text is foundational for creating more accessible, efficient, and interactive applications. As Oprah Winfrey aptly said, "One conversation can change a life forever." These technologies enable users to interact with apps in a conversational manner, making the experience more intuitive and natural.

Whether for accessibility, user convenience, or creating a more dynamic user interface, integrating voice capabilities into your app can significantly enhance the user experience. By enabling these features, you pave the way for more engaging, hands-free, and responsive interactions, aligning technology closer to human communication patterns.

## Further Reading

For more details, check out the article:
[Supporting Text-to-Speech (TTS) and Speech-to-Text (STT)](https://medium.com/@dorangao/supporting-text-to-speech-tts-and-speech-to-text-stt-a-practical-guide-to-ios-swiftui-app-e793dd8177b9)


## License

This project is licensed under the MIT License. See the [MITLicense.md](../MITLicense.md) file for details.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any changes.
