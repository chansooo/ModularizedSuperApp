//
//  TopupBalanceUseCaseImpl.swift
//  FinanceDomainImpl
//
//  Created by 김찬수 on 2023/04/17.
//  Copyright © 2023 chansoo.io. All rights reserved.
//

import Foundation

import FinanceDomain
import FinanceData

import RxSwift

public final class TopupBalanceUseCaseImpl: TopupBalanceUseCase {
    
    // MARK: - Properties
    private let superPayRepository: SuperPayRepository
    
    // MARK: - Initializers
    public init(superPayRepository: SuperPayRepository) {
        self.superPayRepository = superPayRepository
    }
    
    // MARK: - Functions
    public func exetuce(amount: Double, paymentMethodID: String) -> Observable<Void> {
        return superPayRepository.topup(amount: amount, paymentMethodID: paymentMethodID)
    }
}
