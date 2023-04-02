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
    name: "FinanceUserInterface",
    platform: .iOS,
    iOSTargetVersion: "15.0.0",
    interfaceDependencies: [
        .Feature.Finance.Domain.Interface,
        .Core.RIBsUtil,
        .Core.SuperUI,
        .ThirdParty.RIBs,
        .ThirdParty.RxSwift,
    ],
    implementDependencies: [
        .Feature.Finance.Domain.Interface,
        .Feature.Finance.Data.Interface, // usecase 분리 후 삭제
        .Core.DefaultsStore,
        .Core.RIBsUtil,
        .Core.SuperUI,
        .ThirdParty.RIBs,
        .ThirdParty.RxSwift,
    ]
)
