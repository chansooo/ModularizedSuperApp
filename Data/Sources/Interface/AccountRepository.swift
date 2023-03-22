//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 김찬수 on 2023/03/21.
//

public protocol AccountRepository {
    func getAccount() -> Account
}

public struct Account {
    let name: String
    let age: Int
    
    public init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
