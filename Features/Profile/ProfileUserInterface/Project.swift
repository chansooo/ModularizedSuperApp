//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 김찬수 on 2023/03/21.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "ProfileUserInterface",
    targets: [
        Target(
            name: "ProfileUserInterface",
            platform: .iOS,
            product: .framework,
            bundleId: "com.chansoo.ProfileUserInterface",
            sources: ["Sources/**"],
            dependencies: [
            ]
        ),
    ]
)
