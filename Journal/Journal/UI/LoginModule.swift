//
//  LoginModule.swift
//  Journal
//
//  Created by Praveenkumar Somu on 16/4/2563 BE.
//  Copyright © 2563 praveen. All rights reserved.
//

import UIKit

final class LoginModule {
    static func module() -> LoginViewController {
        let router = LoginRouter()
        let viewModel = LoginViewModel(router: router)
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyBoard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        viewController.viewModel = viewModel
        router.viewController = viewController
        return viewController
    }
}
