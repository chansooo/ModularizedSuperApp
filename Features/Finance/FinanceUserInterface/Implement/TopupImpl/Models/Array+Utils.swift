//
//  File.swift
//  
//
//  Created by 김찬수 on 2023/03/20.
//

import Foundation

extension Array {
  subscript(safe index: Int) -> Element? {
    return indices ~= index ? self[index] : nil
  }
}

