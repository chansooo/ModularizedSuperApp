//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 김찬수 on 2023/03/21.
//

import ProjectDescription
import ProjectDescriptionHelpers

let infoPlist: [String: InfoPlist.Value] = [
    "CFBundleDevelopmentRegion": "ko_KR",
    "UIAppFonts": [
        "Item 0": "Pretendard-Medium.otf",
        "Item 1": "Pretendard-Regular.otf",
        "Item 2": "Pretendard-SemiBold.otf",
        "Item 3": "Pretendard-Bold.otf"
    ]
]

let project = Project.framework(name: "ResourceKit",
                                platform: .iOS,
                                iOSTargetVersion: "15.0.0",
                                dependencies: [
                                ],
                                infoPlist: infoPlist)
