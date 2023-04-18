//
//  TopupBalanceUseCase.swift
//  FinanceDomain
//
//  Created by 김찬수 on 2023/04/17.
//  Copyright © 2023 chansoo.io. All rights reserved.
//

import Foundation

import RxSwift

public protocol TopupBalanceUseCase {
    #warning("여기 로직 변경해서 파라미터 바꿀 수 있는지 확인")
    func exetuce(amount: Double, paymentMethodID: String) -> Observable<Void>
}
