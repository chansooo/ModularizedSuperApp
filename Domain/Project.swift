//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 김찬수 on 2023/03/21.
//

import ProjectDescription
import ProjectDescriptionHelpers

// Data layer를 하나의 프로젝트로 두고 안에서 다시 나누는 것이 좋을까
// data 폴더 내부에 다른 폴더들을 더 만들어서 그것들을 하나의 프로젝트로 두는게 나을까.
//let project = Project.inversedFramework(name: "Domain", platform: .iOS, iOSTargetVersion: "14.0.0")

let project = Project.inversedLibrary(name: "Domain", platform: .iOS, iOSTargetVersion: "14.0.0")

