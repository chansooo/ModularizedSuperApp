//
//  AddPaymentMethodBuilder.swift
//  MiniSuperApp
//
//  Created by kimchansoo on 2023/03/06.
//


import FinanceData
import FinanceDomain
import FinanceUserInterface
import RIBs
import RIBsUtil

public protocol AddPaymentMethodDependency: Dependency {
    // TODO: Declare the set of dependencies required by this RIB, but cannot be
    // created by this RIB.
    var cardsOnFileRepository: CardOnFileRepository { get }
}

final class AddPaymentMethodComponent: Component<AddPaymentMethodDependency>, AddPaymentMethodInteractorDependency {
    
    var cardOnFileRepository: CardOnFileRepository { dependency.cardsOnFileRepository } // 부모에서 받아올랭
}

// MARK: - Builder

public final class AddPaymentMethodBuilder: Builder<AddPaymentMethodDependency>, AddPaymentMethodBuildable {

    public override init(dependency: AddPaymentMethodDependency) {
        super.init(dependency: dependency)
    }

    public func build(withListener listener: AddPaymentMethodListener, closeButtonType: DismissButtonType) -> ViewableRouting {
        let component = AddPaymentMethodComponent(dependency: dependency)
        let viewController = AddPaymentMethodViewController(closeButtonType: closeButtonType)
        let interactor = AddPaymentMethodInteractor(
            presenter: viewController,
            dependency: component
        )
        interactor.listener = listener
        return AddPaymentMethodRouter(interactor: interactor, viewController: viewController)
    }
}
