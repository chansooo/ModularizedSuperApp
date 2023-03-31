//
//  AppDelegate.swift
//
//  ModulariedSuperApp
//
//  Created by 김찬수
//

import UIKit
import RIBs
import ResourceKit

@UIApplicationMain
class ChansooAppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let result = ChansooBuilder(dependency: ChansooComponent()).build()
        self.launchRouter = result.launchRouter
//        self.urlHandler = result.urlHandler
        launchRouter?.launch(from:window)
        return true
    }
}

