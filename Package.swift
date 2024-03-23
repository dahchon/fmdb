// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "FMDB",
  products: [
    .library(name: "FMDB", targets: ["FMDB", "FTS3"]), // Include FTS3 target
  ],
  dependencies: [],
  targets: [
    .target(
      name: "FMDB",
      dependencies: [],
      path: "src/fmdb",
      publicHeadersPath: "."),
    .target(  
        name: "FTS3", 
        dependencies: ["FMDB"], // FTS3 depends on the core FMDB code
        path: "src/extra/fts3"), 
  ]
)
