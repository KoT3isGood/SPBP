# Swift Playgrounss Better Preview
Package for Swift Playgrounds that simulates preview like in Xcode

## Installation and Usage in SwiftUI
1. Copy both Preview.swift and WidgetPreview.swift into your App.
2. Use `.previewDevice()` to preview any apple device

## UIKit with live preview
There is no direct integration of UIKit in Swift Playgrounds 4 live preview, so we use `UIViewControllerRepresentable` to show it.

## WidgetKit
There is an implementation using `.modifier()` that works really nice and based of a device
