# InMobi Custom Adapter for Unity LevelPlay

Install InMobi’s custom Unity LevelPlay adapter using Swift Package Manager. The InMobi and LevelPlay SDK dependencies are included automatically.

## Requirements

- iOS 12.0+ (resolved SDK dependencies may require a higher version).
- Swift tools 6.0+.

## Installation (Xcode)

1. In Xcode, select **File → Add Package Dependencies…**.
2. Enter `https://github.com/InMobi/LevelPlay-custom-adapter-Swift-Package`.
3. Select the required release version.
4. Add **LevelPlayInMobiCustomAdapter** to your app target.

Alternatively, add the dependency to your `Package.swift`:

```swift
dependencies: [
    .package(
        url: "https://github.com/InMobi/LevelPlay-custom-adapter-Swift-Package",
        exact: "11050000.0.0"
    )
]
```

Add the product to your target’s dependencies:

```swift
.product(
    name: "LevelPlayInMobiCustomAdapter",
    package: "LevelPlay-custom-adapter-Swift-Package"
)
```

Package version `11050000.0.0` corresponds to adapter version `11.5.0.0`.

## Project Configuration

In your app target’s **Build Settings → Other Linker Flags**, add `-ObjC` for both Debug and Release, preserving `$(inherited)`.

Use `ISLevelPlayInMobiCustomAdapter` as the adapter class in your LevelPlay custom-network configuration.

Do not install the same adapter or SDKs through multiple dependency managers.

## License Terms

By integrating the InMobi SDK, you agree to the [InMobi SDK End-User License Agreement](https://support.inmobi.com/monetize/sdk-documentation/inmobi-sdk-license).

## Support

For SDK integration details, refer to the [InMobi iOS SDK documentation](https://support.inmobi.com/monetize/sdk-documentation/ios-guidelines/overview-ios-guidelines).
