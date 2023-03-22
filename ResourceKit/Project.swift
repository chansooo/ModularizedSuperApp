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
    "NSLocationAlwaysAndWhenInUseUsageDescription": "가까운 위치의 사용자를 파악하기 위해 위치 확인 권한이 필요합니다.",
    "UIAppFonts": [
        "Item 0": "Pretendard-Medium.otf",
        "Item 1": "Pretendard-Regular.otf",
        "Item 2": "Pretendard-SemiBold.otf",
        "Item 3": "Pretendard-Bold.otf"
    ]
]

let project = Project.framework(name: "ResourceKit",
                                platform: .iOS,
                                iOSTargetVersion: "14.0.0",
                                dependencies: [
                                ],
                                infoPlist: infoPlist)
