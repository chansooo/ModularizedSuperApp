//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 김찬수 on 2023/03/21.
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
                TargetDependency.Core.Interface,
                TargetDependency.Core.Implement,
                TargetDependency.ResourceKit.Implement,
                TargetDependency.Feature.Finance.UserInterface.Implement,
            ] + TargetDependency.ThirdParty.base
        )
    ]
)
