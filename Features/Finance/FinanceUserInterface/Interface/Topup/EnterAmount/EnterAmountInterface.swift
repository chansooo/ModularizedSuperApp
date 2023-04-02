//
//  EnterAmountInterface.swift
//  FinanceUserInterface
//
//  Created by kimchansoo on 2023/04/02.
//  Copyright © 2023 chansoo.io. All rights reserved.
//

import Foundation
import RIBs

public protocol EnterAmountBuildable: Buildable {
//    func build(withListener listener: EnterAmountListener) -> EnterAmountRouting
    func build(withListener listener: EnterAmountListener) -> ViewableRouting
}

public protocol EnterAmountListener: AnyObject {
    func enteramountDidTapClose()
    func enteramountDidTapPaymentMethod()
    func enterAmountDidFinishTopup()
}
