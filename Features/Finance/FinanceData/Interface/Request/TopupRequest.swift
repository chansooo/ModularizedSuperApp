//
//  File.swift
//  
//
//  Created by 김찬수 on 2023/03/21.
//

import Foundation
import Network
import FinanceDomain

public struct TopupRequest: Request {
    public typealias Output = TopupResponse
    
    public let endpoint: URL
    public let method: HTTPMethod
    public let query: QueryItems
    public let header: HTTPHeader
    
    public init(baseURL: URL, amount: Double, paymentMethodID: String) {
        self.endpoint = baseURL.appendingPathComponent("/topup")
        self.method = .post
        self.query = [
            "amount": amount,
            "paymentMethodID": paymentMethodID
        ]
        self.header = [:]
    }
}
