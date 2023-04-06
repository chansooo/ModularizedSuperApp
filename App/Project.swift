//
//  AppProject.swift
//
//  ModulariedSuperApp
//
//  Created by 김찬수
//

import ProjectDescription
import ProjectDescriptionHelpers
import UtilityPlugin

let project = Project(
    name: "App",
    targets: [
        Target(
            name: "App",
            platform: .iOS,
            product: .app,
            bundleId: "com.chansoo.app",
            sources: ["Sources/**"],
            dependencies: [
//                .ResourceKit.Implement,
                
                .ThirdParty.RIBs,
//                .ThirdParty.RxRelay,
//                .ThirdParty.RxSwift,
                
                .Network.Implement,
                .Network.Interface,
                
                .Feature.Finance.Data.Interface,
                .Feature.Finance.Domain.Interface,
                .Feature.Finance.UserInterface.Interface,
                
//                .Feature.Profile.Data.Interface,
//                .Feature.Profile.Domain.Interface,
                .Feature.Profile.UserInterface.Interface,
                
//                .Feature.Home.Data.Interface,
//                .Feature.Home.Domain.Interface,
                .Feature.Home.UserInterface.Interface,
                
//                .Feature.Transport.Data.Interface,
//                .Feature.Transport.Domain.Interface,
                .Feature.Transport.UserInterface.Interface,
                
                .Feature.Finance.Data.Implement,
                .Feature.Finance.Domain.Implement,
                .Feature.Finance.UserInterface.Implement,
                
//                .Feature.Profile.Data.Implement,
//                .Feature.Profile.Domain.Implement,
                .Feature.Profile.UserInterface.Implement,
                
//                .Feature.Home.Data.Implement,
//                .Feature.Home.Domain.Implement,
                .Feature.Home.UserInterface.Implement,
                
//                .Feature.Transport.Data.Implement,
//                .Feature.Transport.Domain.Implement,
                .Feature.Transport.UserInterface.Implement,
            ]
        )
    ]
)
