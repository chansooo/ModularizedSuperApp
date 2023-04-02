//
//  AddCardResponse.swift
//  FinanceData
//
//  Created by kimchansoo on 2023/04/01.
//  Copyright © 2023 chansoo.io. All rights reserved.
//

import Foundation
import FinanceDomain

public struct AddCardResponse: Decodable {
    public let card: PaymentMethod
    
}
