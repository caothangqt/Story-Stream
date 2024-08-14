//
//  AppDelegate.swift
//  Story Stream
//
//  Created by TranCaoThang on 11/08/2024.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    var window: UIWindow?

        func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
            window = UIWindow()
            
            let viewController = ViewController()
            
            window?.rootViewController = viewController
            window?.makeKeyAndVisible()
        
            return true
        }



}

