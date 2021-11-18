//
//  AppController.swift
//  ExLoginFlow
//
//  Created by 김종권 on 2021/11/18.
//

import Foundation
import UIKit

final class AppController {
    static let shared = AppController()
    private init() {
        registerAuthStateDidChangeEvent()
    }
    
    private var window: UIWindow!
    private var rootViewController: UIViewController? {
        didSet {
            window.rootViewController = rootViewController
        }
    }
    
    func show(in window: UIWindow) {
        self.window = window
        window.backgroundColor = .systemBackground
        window.makeKeyAndVisible()
        
        checkLoginIn()
    }
    
    private func registerAuthStateDidChangeEvent() {
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(checkLoginIn),
                                               name: .authStateDidChange,
                                               object: nil)
    }
        
    @objc private func checkLoginIn() {
        let isSignIn = UserDefaults.standard.bool(forKey: "isSignIn") == true
        if isSignIn {
            setHome()
        } else {
            routeToLogin()
        }
    }
    
    private func setHome() {
        let homeVC = HomeVC()
        rootViewController = UINavigationController(rootViewController: homeVC)
    }

    private func routeToLogin() {
        rootViewController = UINavigationController(rootViewController: LoginVC())
    }
    
}
