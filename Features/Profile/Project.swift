//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 김찬수 on 2023/03/21.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "Profile",
    targets: [
        Target(
            name: "Profile",
            platform: .iOS,
            product: .app,
            bundleId: "com.chansoo.Profile",
            sources: ["Sources/**"],
            dependencies: [
            ]
        ),
    ]
)
