//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 김찬수 on 2023/03/21.
//
import Data

final class AccountRepositoryImpl: AccountRepository {
    
    func getAccount() -> Account {
        return Account(name: "chansoo", age: 13)
    }
}
