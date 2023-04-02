//
//  TopupInterface.swift
//  FinanceUserInterface
//
//  Created by kimchansoo on 2023/04/02.
//  Copyright © 2023 chansoo.io. All rights reserved.
//

import Foundation
import RIBs

public protocol TopupListener: AnyObject {
    func topupDidClose()
    func topupDidFinish()
}

public protocol TopupBuildable: Buildable {
    func build(withListener listener: TopupListener) -> Routing
}

