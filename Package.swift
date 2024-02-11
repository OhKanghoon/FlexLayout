// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "FlexLayout",
  products: [
    .library(name: "FlexLayout", targets: ["FlexLayout"]),
  ],
  targets: [
    .target(
      name: "FlexLayout",
      dependencies: ["FlexLayoutYoga", "FlexLayoutYogaKit"],
      path: "Sources/Swift",
      publicHeadersPath: "SupportingFiles"
    ),
    .target(
      name: "FlexLayoutYoga",
      dependencies: [],
      path: "Sources/yoga",
      publicHeadersPath: "include/yoga",
      cxxSettings: [
        .headerSearchPath("../.."),
      ]
    ),
    .target(
      name: "FlexLayoutYogaKit",
      dependencies: ["FlexLayoutYoga"],
      path: "Sources/YogaKit",
      publicHeadersPath: "include/YogaKit",
      cxxSettings: [
        .headerSearchPath("../.."),
      ]
    ),
    .testTarget(
      name: "FlexLayoutTests",
      dependencies: [
        "FlexLayout",
      ]
    ),
  ],
  cLanguageStandard: .gnu99,
  cxxLanguageStandard: .gnucxx11
)
