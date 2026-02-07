# Hyperion-iOS (SPM Support)

[![Swift Package Manager](https://img.shields.io/badge/Swift%20Package%20Manager-compatible-brightgreen.svg)](https://swift.org/package-manager/)
[![iOS](https://img.shields.io/badge/iOS-13.0%2B-blue.svg)]()
[![License](https://img.shields.io/badge/License-MIT-black.svg)](https://opensource.org/licenses/MIT)

A professional, Swift Package Manager (SPM) compatible version of [Hyperion-iOS](https://github.com/willowtreeapps/Hyperion-iOS/). This project provides pre-built binaries (`.xcframework`) to ensure a seamless integration experience for modern iOS development workflows.

---

## 🚀 Motivation

The original Hyperion-iOS repository primarily supports CocoaPods. In modern iOS development, Swift Package Manager (SPM) has become the standard. This fork was created to bridge the gap, providing a robust, binary-based SPM implementation that avoids common header visibility and resource loading issues often encountered when converting legacy Objective-C projects to SPM.

## ✨ Key Features

Hyperion is a design debugging tool that sits hidden under your app, ready to be invoked with a simple shake or gesture.

- **HyperionCore**: The foundation of the plugin system and the slide-over drawer interface.
- **Attributes Inspector**: Inspect and modify properties of any `UIView` in real-time.
- **Measurements**: Measure distances between elements with pixel-perfect precision.
- **Slow Animations**: Throttle animations to 1/4x or 1/10x speed to verify transitions and timings.

## 🛠 Installation

### Swift Package Manager

To integrate Hyperion into your project:

1. In Xcode, select **File > Add Packages...**
2. Enter the following URL:
   `https://github.com/balitax/Hyperion-iOS-SPM` (Replace with your actual repo URL if different)
3. Under **Dependency Rule**, select **Up to Next Major Version**.
4. Choose the libraries you wish to use (e.g., `HyperionCore`).

## ⚙️ Configuration

To initialize Hyperion, add the following to your `AppDelegate.swift` or `SceneDelegate.swift`:

### AppDelegate (Standard)

```swift
import HyperionCore

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Hyperion automatically hooks into the window shake gesture
        return true
    }
}
```

### SceneDelegate (Modern)

```swift
import HyperionCore

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let _ = (scene as? UIWindowScene) else { return }
        // Hyperion handles setup automatically via swizzling/hooking
    }
}
```

## 📋 Requirements

- iOS 13.0+
- Xcode 11.0+
- Swift 5.0+

## 📄 License

This project is licensed under the MIT License. See the [LICENSE](https://github.com/willowtreeapps/Hyperion-iOS/blob/master/LICENSE) file in the original repository for details.

## 🤝 Acknowledgments

Special thanks to the original creators at [WillowTree](https://github.com/willowtreeapps/) for their incredible work on Hyperion-iOS. This repository is maintained as a community-driven effort to support modern tooling.

---

*Hyperion-iOS is a trademark of WillowTree, LLC.*
