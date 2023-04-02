//
//  File.swift
//  
//
//  Created by 김찬수 on 2023/03/21.
//

import Foundation
import Network
import FinanceDomain

public struct AddCardRequest: Request {
    
    public typealias Output = AddCardResponse
    
    public var endpoint: URL
    public var method: HTTPMethod
    public var query: QueryItems
    public var header: HTTPHeader
    
    public init(baseURL: URL, info: AddPaymentMethodInfo) {
        self.endpoint = baseURL.appendingPathComponent("/addCard")
        self.method = .post
        self.query = [
            "number": info.number,
            "cvc": info.cvc,
            "expiry": info.expriration
        ]
        self.header = [:]
    }
}
