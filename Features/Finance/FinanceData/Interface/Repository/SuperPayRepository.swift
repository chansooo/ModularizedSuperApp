//
//  SuperPayRepository.swift
//  FinanceData
//
//  Created by kimchansoo on 2023/04/01.
//  Copyright © 2023 chansoo.io. All rights reserved.
//

import Foundation
import RxRelay
import RxSwift

public protocol SuperPayRepository {
//    var balance: BehaviorRelay<Double> { get }
    var balance: BehaviorRelay<Double> { get }
    
    func topup(amount: Double, paymentMethodID: String) -> Observable<Void>
 }
