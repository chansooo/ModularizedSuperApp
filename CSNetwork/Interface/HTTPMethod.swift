//
//  HTTPMethod.swift
//  Core
//
//  Created by 김찬수 on 2023/03/30.
//  Copyright © 2023 chansoo.io. All rights reserved.
//

import Foundation

public enum HTTPMethod: String, Encodable {
  case get = "GET"
  case post = "POST"
  case put = "PUT"
}
