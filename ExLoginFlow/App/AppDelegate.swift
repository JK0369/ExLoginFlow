//
//  AppDelegate.swift
//  ExLoginFlow
//
//  Created by 김종권 on 2021/11/18.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window
        AppController.shared.show(in: window)
        
        return true
    }
}
