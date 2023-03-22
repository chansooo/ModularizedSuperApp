//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 김찬수 on 2023/03/21.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "Transport",
    targets: [
        Target(
            name: "Transport",
            platform: .iOS,
            product: .app,
            bundleId: "com.chansoo.Transport",
            sources: ["Sources/**"],
            dependencies: [
            ]
        ),
    ]
)
