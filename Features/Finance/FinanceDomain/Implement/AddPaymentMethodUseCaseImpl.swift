//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 김찬수 on 2023/03/21.
//
import FinanceDomain
import FinanceData
import RxSwift

public final class AddPaymentMethodUseCaseImpl: AddPaymentMethodUseCase {
    
    // MARK: - Properties
    private let cardOnFileRepository: CardOnFileRepository
    
    // MARK: - Initializers
    public init(cardOnFileRepository: CardOnFileRepository) {
        self.cardOnFileRepository = cardOnFileRepository
    }
    
    // MARK: - Functions
    public func execute(info: AddPaymentMethodInfo) -> Observable<PaymentMethod> {
        return cardOnFileRepository.addCard(info: info)
    }
}
