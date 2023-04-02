//
//  File.swift
//  
//
//  Created by 김찬수 on 2023/03/20.
//

import UIKit
import FinanceDomain

struct PaymentMethodViewModel {
    let name: String
    let digits: String
    let color: UIColor
    
    init(paymentModel: PaymentMethod) {
        self.name = paymentModel.name
        self.digits = "**** \(paymentModel.digits)"
        self.color = UIColor(hex: paymentModel.color) ?? .systemGray2
    }
}

