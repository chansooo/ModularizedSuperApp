//
//  File.swift
//  
//
//  Created by 김찬수 on 2023/03/21.
//

import Foundation

import RIBs
import RIBsUtil
import FinanceDomain

public protocol AddPaymentMethodBuildable: Buildable {
    func build(withListener listener: AddPaymentMethodListener, closeButtonType: DismissButtonType) -> ViewableRouting
}

public protocol AddPaymentMethodListener: AnyObject {
    // TODO: Declare methods the interactor can invoke to communicate with other RIBs.
    func addPaymentMethodDidTapClose()
    func addPaymentMethodDidAddCard(paymentMethod: PaymentMethod)
}

