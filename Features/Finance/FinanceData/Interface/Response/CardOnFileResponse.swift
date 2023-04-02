//
//  CardOnFileResponse.swift
//  FinanceData
//
//  Created by kimchansoo on 2023/04/01.
//  Copyright © 2023 chansoo.io. All rights reserved.
//

import Foundation
import FinanceDomain

public struct CardOnFileResponse: Decodable {
    public let cards: [PaymentMethod]
}
