//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 김찬수 on 2023/03/21.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "Finance",
    targets: [
        Target(
            name: "Finance",
            platform: .iOS,
            product: .framework,
            bundleId: "com.chansoo.Finance",
            sources: ["Sources/**"],
            dependencies: [
            ]
        ),
    ]
)
