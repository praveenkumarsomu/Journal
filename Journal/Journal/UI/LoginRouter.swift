//
//  LoginRouter.swift
//  Journal
//
//  Created by Praveenkumar Somu on 15/4/2563 BE.
//  Copyright © 2563 praveen. All rights reserved.
//

import Foundation

class LoginRouter: Router<LoginViewController>, LoginRouter.Routes {
    var settingsTransition: Transition = PushTransaction()
    
    typealias Routes = JournalsRoute
}
