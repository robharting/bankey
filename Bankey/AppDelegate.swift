//
//  AppDelegate.swift
//  Bankey
//
//  Created by Harting, R.P.G. (Rob) on 18/08/2025.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ applicaton: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemBackground
//        window?.rootViewController = LoginViewController()
        window?.rootViewController = OnboardingContainerViewController()
        
        return true
    }

}

