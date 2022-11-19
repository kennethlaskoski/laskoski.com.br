// swift-tools-version:5.5

//  Copyright Kenneth Laskoski. All Rights Reserved.
//  SPDX-License-Identifier: MIT

import PackageDescription

let package = Package(
  name: "Hello",
  platforms: [.macOS(.v12)],
  products: [
    .executable(
      name: "Hello",
      targets: ["Hello"]
    ),
  ],
  dependencies: [
    .package(name: "Publish", url: "https://github.com/johnsundell/publish.git", from: "0.8.0"),
  ],
  targets: [
    .executableTarget(
      name: "Hello",
      dependencies: ["Publish"]
    ),
  ]
)
