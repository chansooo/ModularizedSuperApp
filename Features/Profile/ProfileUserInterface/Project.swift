//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 김찬수 on 2023/03/21.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.invertedDualTargetProject(
    name: "ProfileUserInterface",
    platform: .iOS,
    iOSTargetVersion: "14.0.0",
    interfaceDependencies: [],
    implementDependencies: []
)
