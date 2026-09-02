// swift-tools-version:5.9
import PackageDescription

// SPM support for the til-et fork of SpreadsheetView (upstream ships CocoaPods-only).
// Sources live in Framework/Sources/*.swift (same set the podspec compiles); the framework
// umbrella header and Info.plist are excluded since SPM builds this as a plain Swift module.
let package = Package(
    name: "SpreadsheetView",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "SpreadsheetView", targets: ["SpreadsheetView"]),
    ],
    targets: [
        .target(
            name: "SpreadsheetView",
            path: "Framework/Sources",
            exclude: ["SpreadsheetView.h", "Info.plist"]
        ),
    ],
    swiftLanguageVersions: [.v5]
)
