//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 김찬수 on 2023/03/21.
//

protocol AccountRepository {
    func getAccount() -> Account
}

struct Account {
    let name: String
    let age: Int
}
