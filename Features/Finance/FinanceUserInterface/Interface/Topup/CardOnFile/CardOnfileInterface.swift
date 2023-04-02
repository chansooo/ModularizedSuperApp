//
//  CardOnfileInterface.swift
//  FinanceUserInterface
//
//  Created by kimchansoo on 2023/04/02.
//  Copyright © 2023 chansoo.io. All rights reserved.
//

import Foundation
import FinanceDomain
import RIBs

public protocol CardOnFileBuildable: Buildable {
//    func build(withListener listener: CardOnFileListener, paymentMethods: [PaymentMethod]) -> CardOnFileRouting
    func build(withListener listener: CardOnFileListener, paymentMethods: [PaymentMethod]) -> ViewableRouting
}

public protocol CardOnFileListener: AnyObject {
    // TODO: Declare methods the interactor can invoke to communicate with other RIBs.
    func cardOnFileDidTapClose()
    func cardOnfileDidTapAddCard()
    func cardOnFiledidSelect(at index: Int)
}
