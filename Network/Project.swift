//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 김찬수 on 2023/03/21.
//

import ProjectDescription
import ProjectDescriptionHelpers
import UtilityPlugin

let project = Project.invertedDualTargetProject(
    name: "Network",
    platform: .iOS,
    iOSTargetVersion: "15.0.0",
    interfaceDependencies: [
        .ThirdParty.RxSwift,
        .ThirdParty.RxRelay,
        .ThirdParty.RxCocoa,
    ],
    implementDependencies: [
        .ThirdParty.RxSwift,
        .ThirdParty.RxRelay,
        .ThirdParty.RxCocoa,
    ]
)
