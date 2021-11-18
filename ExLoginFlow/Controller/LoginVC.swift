//
//  LoginVC.swift
//  ExLoginFlow
//
//  Created by 김종권 on 2021/11/18.
//

import UIKit

class LoginVC: UIViewController {
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("로그인", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.addTarget(self, action: #selector(didTapLoginButton), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(loginButton)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }

    @objc func didTapLoginButton() {
        UserDefaults.standard.set(true, forKey: "isSignIn")
        NotificationCenter.default.post(name: .authStateDidChange, object: nil)
    }

}

