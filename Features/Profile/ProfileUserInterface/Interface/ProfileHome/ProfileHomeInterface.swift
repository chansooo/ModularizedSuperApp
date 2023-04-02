//
//  ProfileHomeInterface.swift
//  ProfileUserInterface
//
//  Created by kimchansoo on 2023/04/02.
//  Copyright © 2023 chansoo.io. All rights reserved.
//

import Foundation
import RIBs

public protocol ProfileHomeBuildable: Buildable {
    func build(withListener listener: ProfileHomeListener) -> ViewableRouting
}

public protocol ProfileHomeListener: AnyObject {
  // TODO: Declare methods the interactor can invoke to communicate with other RIBs.
}
