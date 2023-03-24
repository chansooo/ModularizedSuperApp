//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 김찬수 on 2023/03/21.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "TransportUserInterface",
    targets: [
        Target(
            name: "TransportUserInterface",
            platform: .iOS,
            product: .framework,
            bundleId: "com.chansoo.TransportUserInterface",
            sources: ["Sources/**"],
            dependencies: [
            ]
        ),
    ]
)
