//
//  DefaultsStore.swift
//  Core
//
//  Created by 김찬수 on 2023/03/30.
//  Copyright © 2023 chansoo.io. All rights reserved.
//

import Foundation

public protocol DefaultsStore {
    var isInitialLaunch: Bool { get set }
    var lastNoticeDate: Double { get set }
}
