//
//  Formatter.swift
//  MiniSuperApp
//
//  Created by 김찬수 on 2023/03/20.
//

import Foundation
struct Formatter {
    static let balanceFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter
    }()
}
