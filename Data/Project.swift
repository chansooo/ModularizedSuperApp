//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 김찬수 on 2023/03/21.
//

import ProjectDescription
import ProjectDescriptionHelpers


// TODO: - Data로 만들 게 아니라 각각의 Repository 이름의 배열을 넘겨주면 해당 Target들 전부 가지는 Project 반환하는 메소드 구현
let project = Project.inversedLibrary(name: "Data", platform: .iOS, iOSTargetVersion: "14.0.0")


