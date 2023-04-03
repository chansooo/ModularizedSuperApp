//
//  Feature.swift
//  TemplatePlugin
//
//  Created by 김찬수 on 2023/03/28.
//

import ProjectDescription

let name: Template.Attribute = .required("name")
let author: Template.Attribute = .required("author")
let currentDate: Template.Attribute = .required("currentDate")

let Feature = Template(
    description: "This Template is for making default files",
    attributes: [
        name,
//        author,
//        currentDate
    ],
    items: [
        .file(
            path: .featureBasePath + "/\(name)Data/Project.swift",
            templatePath: "DataProject.stencil"
        ),
        .file(
            path: .featureBasePath + "/\(name)Data/Implement/a.swift",
            templatePath: "dummy.stencil"
        ),
        .file(
            path: .featureBasePath + "/\(name)Data/Interface/a.swift",
            templatePath: "dummy.stencil"
        ),
        
        .file(
            path: .featureBasePath + "/\(name)Domain/Project.swift",
            templatePath: "DomainProject.stencil"
        ),
        .file(
            path: .featureBasePath + "/\(name)Domain/Implement/a.swift",
            templatePath: "dummy.stencil"
        ),
        .file(
            path: .featureBasePath + "/\(name)Domain/Interface/a.swift",
            templatePath: "dummy.stencil"
        ),
        .file(
            path: .featureBasePath + "/\(name)UserInterface/Project.swift",
            templatePath: "UserInterfaceProject.stencil"
        ),
        .file(
            path: .featureBasePath + "/\(name)UserInterface/Implement/a.swift",
            templatePath: "dummy.stencil"
        ),
        .file(
            path: .featureBasePath + "/\(name)UserInterface/Interface/a.swift",
            templatePath: "dummy.stencil"
        )
        
    ]
)

extension String {
    static var featureBasePath: Self {
        return "Features/\(name)"
    }
}
