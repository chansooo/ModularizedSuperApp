//
//  CardOnFileRepository.swift
//  FinanceData
//
//  Created by kimchansoo on 2023/04/01.
//  Copyright © 2023 chansoo.io. All rights reserved.
//

import Foundation
import RxRelay
import RxSwift
import FinanceDomain

public protocol CardOnFileRepository {
    var cardOnFile: BehaviorRelay<[PaymentMethod]> { get }
    func addCard(info: AddPaymentMethodInfo) -> Observable<PaymentMethod>
    func fetch()
}
