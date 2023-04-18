//
//  FinanceAppDelegate.swift
//
//  ModulariedSuperApp
//
//  Created by Chansoo on .
//

import UIKit

@UIApplicationMain
class ProfileAppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = ProfileUserInterfaceViewController()
        window.makeKeyAndVisible()
        self.window = window
        return true
    }
}

