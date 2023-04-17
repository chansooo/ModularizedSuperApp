//
//  FetchBalanceUseCaseImpl.swift
//  FinanceDomain
//
//  Created by 김찬수 on 2023/04/17.
//  Copyright © 2023 chansoo.io. All rights reserved.
//

import Foundation

import FinanceDomain
import FinanceData
import RxSwift

public final class FetchBalanceUseCaseImpl: FetchBalanceUseCase {
    
    // MARK: - Properties
    private let superPayRepository: SuperPayRepository
    
    // MARK: - Initializers
    public init(superPayRepository: SuperPayRepository) {
        self.superPayRepository = superPayRepository
    }
    
    // MARK: - Functions
    
    public func execute() -> Observable<Double> {
        return superPayRepository.balance.asObservable()
    }
}
