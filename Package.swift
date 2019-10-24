// swift-tools-version:3.1

import PackageDescription

let package = Package(
    name: "PCA9685",
    dependencies: [
    	// We need to use the fork for now. Sorry
    	// A workaround for projects like RPiLight that depend on the fork.
    	// Swift 4 doesn't have this problem, but Swift 3.1.1 does. 
  //      .package(url: "https://github.com/uraimo/SwiftyGPIO.git", majorVersion: 1),
    ]
//    swiftLanguageVersions: [3, 4]
    ,
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "PCA9685",
            dependencies: []),
           // dependencies: ["SwiftyGPIO", "SwiftyServo"]),
         //   dependencies: ["SwiftyGPIO"]),
        .testTarget(
            name: "PCA9685Tests",
            dependencies: ["PCA9685"]),
    ]
)
