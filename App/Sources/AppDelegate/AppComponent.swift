//
//  AppComponent.swift
//  App
//
//  Created by kimchansoo on 2023/04/02.
//

import Foundation
import RIBs

final class AppComponent: Component<EmptyDependency>, AppRootDependency {
  
  init() {
    super.init(dependency: EmptyComponent())
  }
  
}
