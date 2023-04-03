//
//  SuperPayDashboardInterface.swift
//  FinanceUserInterface
//
//  Created by 김찬수 on 2023/04/03.
//  Copyright © 2023 chansoo.io. All rights reserved.
//

import Foundation
import RIBs

public protocol SuperPayDashboardBuildable: Buildable {
    func build(withListener listener: SuperPayDashboardListener) -> ViewableRouting
}

public protocol SuperPayDashboardListener: AnyObject {
    // TODO: Declare methods the interactor can invoke to communicate with other RIBs.
    func superPayDashboardDidTapTopup()
}

