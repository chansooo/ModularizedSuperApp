//
//  App.swift
//  TemplatePlugin
//
//  Created by 김찬수 on 2023/03/29.
//

import ProjectDescription

let App = Template(
    description: "This Template is for making App files",
    attributes: [
        name,
    ],
    items: [
        .file(
            path: "App/Project.swift",
            templatePath: "AppProject.stencil"
        ),
        .file(
            path: "App/Sources/AppDelegate.swift",
            templatePath: "AppDelegate.stencil"
        ),
        .file(
            path: "App/Sources/SceneDelegate.swift",
            templatePath: "SceneDelegate.stencil"
        ),

    ]
)

//extension String {
//    static var appBasePath: Self {
//        return "Features/\(name)"
//    }
//}