//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 김찬수 on 2023/03/21.
//

import ProjectDescription
import ProjectDescriptionHelpers
import UtilityPlugin

let project = Project.invertedDualTargetProjectWithDemoApp(
    name: "TransportUserInterface",
    platform: .iOS,
    iOSTargetVersion: "15.0.0",
    interfaceDependencies: [
//        .Feature.Finance.UserInterface.Interface,
//        .Feature.Finance.Data.Interface,
//        .ThirdParty.RxSwift,
//        .ThirdParty.RxRelay,
//        .ResourceKit.Implement,
        .ThirdParty.RIBs,
    ],
    implementDependencies: [
        .Feature.Finance.UserInterface.Interface,
        .Feature.Finance.Data.Interface,
        
        .ThirdParty.RxSwift,
        .ThirdParty.RxRelay,
        .ThirdParty.RIBs,
        
        .Core.SuperUI,
        
        .ResourceKit.Implement,
    ]
)
