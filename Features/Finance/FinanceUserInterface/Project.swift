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
        .Feature.Finance.Data.Interface,
        
        .Core.RIBsUtil,
        .Core.SuperUI,
        .Core.DefaultsStore,
        
        .ThirdParty.RIBs,
        .ThirdParty.RxSwift,
        .ThirdParty.RxRelay,
    ],
    implementDependencies: [
        .Feature.Finance.Domain.Interface,
        .Feature.Finance.Data.Interface,
        
        .Core.RIBsUtil,
        .Core.SuperUI,
        .Core.DefaultsStore,
        
        .ThirdParty.RIBs,
        .ThirdParty.RxSwift,
        .ThirdParty.RxRelay,
    ]
)
