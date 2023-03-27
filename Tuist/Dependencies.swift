//
//  Dependencies.swift
//  Config
//
//  Created by 김찬수 on 2023/03/27.
//

import ProjectDescription

let spm = SwiftPackageManagerDependencies([
    .remote(url: "https://github.com/ReactiveX/RxSwift", requirement: .upToNextMajor(from: "6.5.0")),
    .remote(url: "https://github.com/RxSwiftCommunity/RxGesture", requirement: .upToNextMinor(from: "4.0.0")),
    .remote(url: "https://github.com/SnapKit/SnapKit", requirement: .upToNextMajor(from: "5.0.0")),
    .remote(url: "https://github.com/onevcat/Kingfisher", requirement: .upToNextMajor(from: "7.0")),
    .remote(url: <#T##String#>, requirement: <#T##Package.Requirement#>)
])

let dependencies = Dependencies(
    swiftPackageManager: spm,
    platforms: [.iOS]
)
