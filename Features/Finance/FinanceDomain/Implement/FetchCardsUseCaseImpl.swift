//
//  FetchCardsUseCaseImpl.swift
//  FinanceDomain
//
//  Created by 김찬수 on 2023/04/17.
//  Copyright © 2023 chansoo.io. All rights reserved.
//

import Foundation
import FinanceData
import FinanceDomain
import RxSwift

public final class FetchCardsUseCaseImpl: FetchCardsUseCase {

    // MARK: - Properties
    private let cardOnFileRepository: CardOnFileRepository
    
    // MARK: - Initializers
    public init(cardOnFileRepository: CardOnFileRepository) {
        self.cardOnFileRepository = cardOnFileRepository
    }
    
    // MARK: - Functions
    public func execute() -> Observable<[PaymentMethod]> {
        return cardOnFileRepository.cardOnFile.asObservable()
    }

}
