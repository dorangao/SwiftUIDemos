# SwiftUI State Management Demo

This project demonstrates the usage of various state management properties in SwiftUI, showcasing how different types of variables can be used to create a powerful and responsive user interface.

## Features

- **State Variables**: Demonstrates the use of `@State` for managing simple state values.
- **Binding**: Shows how to use `@Binding` for two-way data binding between parent and child views.
- **ObservedObject**: Uses `@ObservedObject` to manage state in a view model.
- **AppStorage**: Demonstrates the use of `@AppStorage` to store and retrieve user settings.
- **EnvironmentObject**: Uses `@EnvironmentObject` to share state across multiple views.

## Project Structure

- **ContentView.swift**: The main view demonstrating the use of various state properties.
- **UserData.swift**: Contains the `ViewModel` and `ChildView` for the `@ObservedObject` and `@Binding` examples.
- **Settings.swift**: The `Settings` class for the `@EnvironmentObject` example.
- **DetailView.swift**: A detail view to show the `@EnvironmentObject` usage.
- **MITLicense.md**: The MIT License file.

## Getting Started

### Prerequisites

- Xcode 15 or later
- iOS 17.0 or later

### Installation

1. Clone the repository:
    ```sh
    git clone git@github.com:dorangao/SwiftUIStateManagementDemo.git
    ```
2. Open the project in Xcode:
    ```sh
    cd SwiftUIStateManagementDemo
    open SwiftUIStateManagementDemo.xcodeproj
    ```

### Running the Project

1. Select your target device (iPhone or iPad simulator) in Xcode.
2. Click the "Run" button (or press Command + R) to build and run the project.

## Further Reading

For more details on understanding variable types in SwiftUI, check out the article:
[Understanding Variable Types in SwiftUI: Examples and Usages](https://medium.com/@dorangao/understanding-variable-types-in-swiftui-examples-and-usages-a-practical-guide-to-ios-swiftui-app-7e12dbd6f1d3)


## License

This project is licensed under the MIT License. See the [MITLicense.md](MITLicense.md) file for details.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any changes.

