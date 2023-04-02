//
//  EnterAmountBuilder.swift
//  MiniSuperApp
//
//  Created by 김찬수 on 2023/03/16.
//

import RIBs
import FinanceData
import FinanceDomain
import FinanceUserInterface
import RxSwift
import RxRelay

protocol EnterAmountDependency: Dependency {
    var selectedPaymentMethod: BehaviorRelay<PaymentMethod> { get }
    var superPayRepository: SuperPayRepository { get }
}

final class EnterAmountComponent: Component<EnterAmountDependency>, EnterAmountInteractorDependency {
    var selectedPaymentMethod: BehaviorRelay<PaymentMethod> { dependency.selectedPaymentMethod }
    var superPayRepository: SuperPayRepository { dependency.superPayRepository }
}

// MARK: - Builder

final class EnterAmountBuilder: Builder<EnterAmountDependency>, EnterAmountBuildable {
    
    override init(dependency: EnterAmountDependency) {
        super.init(dependency: dependency)
    }

    func build(withListener listener: EnterAmountListener) -> ViewableRouting {
        let component = EnterAmountComponent(dependency: dependency)
        let viewController = EnterAmountViewController()
        let interactor = EnterAmountInteractor(presenter: viewController, dependency: component)
        interactor.listener = listener
        return EnterAmountRouter(interactor: interactor, viewController: viewController)
    }
}
