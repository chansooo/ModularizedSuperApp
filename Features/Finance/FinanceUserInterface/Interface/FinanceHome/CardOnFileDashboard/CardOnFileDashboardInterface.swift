//
//  CardOnFileDashboardInterface.swift
//  FinanceUserInterface
//
//  Created by 김찬수 on 2023/04/03.
//  Copyright © 2023 chansoo.io. All rights reserved.
//

import Foundation
import RIBs

public protocol CardOnFileDashboardBuildable: Buildable {
    func build(withListener listener: CardOnFileDashboardListener) -> ViewableRouting
}

public protocol CardOnFileDashboardListener: AnyObject {
    // TODO: Declare methods the interactor can invoke to communicate with other RIBs.
    func cardOnFileDashboardDidTapAddPaymentMethod()
}
