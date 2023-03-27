//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 김찬수 on 2023/03/21.
//

import ProjectDescription
import ProjectDescriptionHelpers

//let project = Project(
//    name: "FinanceUserInterface",
//    targets: [
//        Target(
//            name: "FinanceUserInterface",
//            platform: .iOS,
//            product: .staticLibrary,
//            bundleId: "com.chansoo.FinanceUserInterface",
//            sources: ["Sources/**"],
//            dependencies: [
//                .project(target: "FinanceData", path: "../FinanceData")
//            ]
//        ),
//    ]
//)

let project = Project.invertedDualTargetProject(
    name: "FinanceUserInterface",
    platform: .iOS,
    iOSTargetVersion: "14.0.0",
    interfaceDependencies: [],
    implementDependencies: []
)
