//
//  AppRootComponent.swift
//  MiniSuperApp
//
//  Created by 김찬수 on 2023/03/20.
//

import Foundation

import RIBs

import HomeUserInterface
import HomeUserInterfaceImpl

import FinanceUserInterface
import FinanceUserInterfaceImpl

import ProfileUserInterface
import ProfileUserInterfaceImpl

import TransportUserInterface
import TransportUserInterfaceImpl

import FinanceData
import FinanceDataImpl

import FinanceDomain
import FinanceDomainImpl

import CSNetwork
import CSNetworkImpl

final class AppRootComponent: Component<AppRootDependency>, AppHomeDependency, FinanceHomeDependency, ProfileHomeDependency, TransportHomeDependency, TopupDependency, AddPaymentMethodDependency  {
    
    var fetchBalanceUseCase: FetchBalanceUseCase
    var fetchCardsUseCase: FetchCardsUseCase
    var topupBalanceUseCase: TopupBalanceUseCase
    

    var cardsOnFileRepository: CardOnFileRepository
    
    var addPaymentMethodUseCase: AddPaymentMethodUseCase
    
    var superPayRepository: SuperPayRepository
    
    lazy var transportHomeBuildable: TransportHomeBuildable = {
        return TransportHomeBuilder(dependency: self)
    }()
    
    lazy var topupBuildable: TopupBuildable = {
        return TopupBuilder(dependency: self)
    }()
    
    lazy var addPaymentMethodBuildable: AddPaymentMethodBuildable = {
       return AddPaymentMethodBuilder(dependency: self)
    }()
    
    var topupBaseViewController: ViewControllable { rootViewcontroller.topViewControllable }
    
    private let rootViewcontroller: ViewControllable
    
    init(
        dependency: AppRootDependency,
        rootViewcontroller: ViewControllable
    ) {
        let config = URLSessionConfiguration.ephemeral
        config.protocolClasses = [SuperAppURLProtocol.self]
        
        setupURLProtocol()
        
        let network = NetworkImp(session: URLSession(configuration: config))
        
        cardsOnFileRepository = CardOnFileRepositoryImpl(
            network: network,
            baseURL: BaseURL().financeBaseURL
        )
        
        self.cardsOnFileRepository.fetch()
        
        self.superPayRepository = SuperPayRepositoryImpl(
            network: network,
            baseURL: BaseURL().financeBaseURL
        )
        
        self.addPaymentMethodUseCase = AddPaymentMethodUseCaseImpl(cardOnFileRepository: cardsOnFileRepository)
        
        self.fetchBalanceUseCase = FetchBalanceUseCaseImpl(superPayRepository: superPayRepository)
        self.fetchCardsUseCase = FetchCardsUseCaseImpl(cardOnFileRepository: cardsOnFileRepository)
        self.topupBalanceUseCase = TopupBalanceUseCaseImpl(superPayRepository: superPayRepository)
        
        self.rootViewcontroller = rootViewcontroller
        super.init(dependency: dependency)
    }
}
