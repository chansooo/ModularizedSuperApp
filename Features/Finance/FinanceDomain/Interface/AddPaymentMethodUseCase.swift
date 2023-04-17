//
//  AddPaymentMethodUseCase.swift
//  FinanceDomain
//
//  Created by 김찬수 on 2023/04/17.
//  Copyright © 2023 chansoo.io. All rights reserved.
//

import Foundation
import RxSwift

public protocol AddPaymentMethodUseCase {
    func execute(info: AddPaymentMethodInfo) -> Observable<PaymentMethod>
}
