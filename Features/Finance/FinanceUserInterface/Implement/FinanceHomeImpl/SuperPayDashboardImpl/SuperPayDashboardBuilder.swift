//
//  SuperPayDashboardBuilder.swift
//  MiniSuperApp
//
//  Created by kimchansoo on 2023/02/28.
//

import RIBs
import Foundation
import RxSwift
import RxRelay
import FinanceUserInterface

protocol SuperPayDashboardDependency: Dependency {
    // TODO: Declare the set of dependencies required by this RIB, but cannot be
    // created by this RIB.
    // 부모로 부터 받고싶은 아이들
    var balance: BehaviorRelay<Double> { get }
}

final class SuperPayDashboardComponent: Component<SuperPayDashboardDependency>, SuperPayDashboardInteractorDependency {
    var balance: BehaviorRelay<Double> { dependency.balance }
    var balanceFormatter: NumberFormatter { Formatter.balanceFormatter }
    // TODO: Declare 'fileprivate' dependencies that are only used by this RIB.
}

// MARK: - Builder

final class SuperPayDashboardBuilder: Builder<SuperPayDashboardDependency>, SuperPayDashboardBuildable {

    override init(dependency: SuperPayDashboardDependency) {
        super.init(dependency: dependency)
    }

    func build(withListener listener: SuperPayDashboardListener) -> ViewableRouting {
        let component = SuperPayDashboardComponent(dependency: dependency)
        let viewController = SuperPayDashboardViewController()
        let interactor = SuperPayDashboardInteractor(presenter: viewController, dependency: component)
        interactor.listener = listener
        return SuperPayDashboardRouter(interactor: interactor, viewController: viewController)
    }
}
