//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 김찬수 on 2023/03/21.
//

import ProjectDescription
import ProjectDescriptionHelpers

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
//                .project(target: "Finance", path: "../Features/Finance"),
                .project(target: "ResourceKit", path: "../ResourceKit")
            ]
        )
    ]
)
