//
//  BaseURL.swift
//  MiniSuperApp
//
//  Created by 김찬수 on 2023/03/21.
//

import Foundation

struct BaseURL {
    var financeBaseURL: URL {
        return URL(string: "https://finance.superapp.com/api/v1")!
    }
}
