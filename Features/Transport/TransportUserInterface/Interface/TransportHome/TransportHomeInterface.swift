//
//  File.swift
//  
//
//  Created by 김찬수 on 2023/03/20.
//

import Foundation
import RIBs

public protocol TransportHomeListener: AnyObject {
    func transportHomeDidTapClose()
}

public protocol TransportHomeBuildable: Buildable {
    func build(withListener listener: TransportHomeListener) -> ViewableRouting
}
