//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 김찬수 on 2023/03/21.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "FinanceUserInterface",
    targets: [
        Target(
            name: "FinanceUserInterface",
            platform: .iOS,
            product: .framework,
            bundleId: "com.chansoo.FinanceUserInterface",
            sources: ["Sources/**"],
            dependencies: [
            ]
        ),
    ]
)
