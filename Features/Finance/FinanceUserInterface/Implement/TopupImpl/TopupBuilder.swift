//
//  TopupBuilder.swift
//  MiniSuperApp
//
//  Created by kimchansoo on 2023/03/14.
//

import RIBs
import FinanceData
import FinanceDomain
import FinanceUserInterface
import RxRelay

public protocol TopupDependency: Dependency {
    // TODO: Make sure to convert the variable into lower-camelcase.
    var topupBaseViewController: ViewControllable { get }
    var cardsOnFileRepository: CardOnFileRepository { get }
    var superPayRepository: SuperPayRepository { get }
    var addPaymentMethodBuildable: AddPaymentMethodBuildable { get }
}

final class TopupComponent: Component<TopupDependency>, TopupInteractorDependency, EnterAmountDependency, CardOnFileDependency {
    
    var superPayRepository: SuperPayRepository { dependency.superPayRepository }
    
    var selectedPaymentMethod: BehaviorRelay<PaymentMethod> { paymentMethodStream }
    
    var cardsOnFileRepository: CardOnFileRepository { dependency.cardsOnFileRepository }
    
    var addPaymentMethodBuildable: AddPaymentMethodBuildable { dependency.addPaymentMethodBuildable }
    
    init(
        dependency: TopupDependency,
        paymentMethodStream: BehaviorRelay<PaymentMethod>
    ) {
        self.paymentMethodStream = paymentMethodStream
        super.init(dependency: dependency)
    }
    
    fileprivate var topupBaseViewController: ViewControllable { dependency.topupBaseViewController }
    
    let paymentMethodStream: BehaviorRelay<PaymentMethod>
}

// MARK: - Builder

public final class TopupBuilder: Builder<TopupDependency>, TopupBuildable {

    public override init(dependency: TopupDependency) {
        super.init(dependency: dependency)
    }

    public func build(withListener listener: TopupListener) -> Routing {
        
        let paymentMethodStream = BehaviorRelay<PaymentMethod>(
            value: PaymentMethod(
                id: "",
                name: "",
                digits: "",
                color: "",
                isPrimary: false
            )
        )
        let component = TopupComponent(dependency: dependency, paymentMethodStream: paymentMethodStream)
        let interactor = TopupInteractor(dependency: component)
        interactor.listener = listener
        
        let enterAmountBuilder = EnterAmountBuilder(dependency: component)
        
        let cardOnFileBuilder = CardOnFileBuilder(dependency: component)
        
        return TopupRouter(
            interactor: interactor,
            viewController: component.topupBaseViewController,
            addpaymentbuildable: component.addPaymentMethodBuildable,
            enterAmountBuildable: enterAmountBuilder,
            cardOnFileBuildable: cardOnFileBuilder
        )
    }
}
