//
//  File.swift
//  
//
//  Created by 김찬수 on 2023/03/21.
//

import Foundation
import CSNetwork
import FinanceDomain

public struct CardOnFileRequest: Request {
    public typealias Output = CardOnFileResponse
    
    public var endpoint: URL
    public var method: HTTPMethod
    public var query: QueryItems
    public var header: HTTPHeader
    
    public init(baseURL: URL) {
        self.endpoint = baseURL.appendingPathComponent("/cards")
        self.method = .get
        self.query = [:]
        self.header = [:]
    }
}
