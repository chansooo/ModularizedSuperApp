//
//  HomeAppDelegate.swift
//
//  ModulariedSuperApp
//
//  Created by 김찬수
//

import UIKit
import RIBs

@UIApplicationMain
class HomeAppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let result = HomeBuilder(dependency: HomeComponent()).build()
        self.launchRouter = result.launchRouter
//        self.urlHandler = result.urlHandler
        launchRouter?.launch(from:window)
        return true
    }
}

