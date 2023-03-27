//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 김찬수 on 2023/03/21.
//

import UIKit
import CoreImpl
import ResourceKit
import RxSwift

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
    ) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        
        window?.rootViewController = UIViewController()
        window?.makeKeyAndVisible()
        
        let b = ResourceKitAsset.angry.image
        let c = ResourceKitFontFamily.Pretendard.bold
        let a = AccountRepositoryImpl()
        let e = Observable.just("hi")
        return true
    }

}

