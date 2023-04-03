//
//  Formatter.swift
//  MiniSuperApp
//
//  Created by kimchansoo on 2023/03/06.
//

import Foundation

struct Formatter {
    static let balanceFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter
    }()
}
