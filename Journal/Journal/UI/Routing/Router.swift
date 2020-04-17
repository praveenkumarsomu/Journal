//
//  Router.swift
//  Journal
//
//  Created by Praveenkumar Somu on 15/4/2563 BE.
//  Copyright © 2563 praveen. All rights reserved.
//

import UIKit

protocol Closable: class {
    func close()
}

protocol RouterProtocol {
    associatedtype Controller: UIViewController
    var viewController: Controller? {get set}
    func open(viewController: UIViewController, transition: inout Transition)
}

class Router<U>: RouterProtocol, Closable where U: UIViewController {
    typealias Controller = U
    weak var viewController: Controller?
    var openTransition: Transition?
    func open(viewController: UIViewController, transition: inout Transition) {
        transition.viewController = self.viewController
        transition.open(viewController: viewController)
    }
    func close() {
        guard let viewController = viewController else {
            return
        }
        openTransition?.close(viewController: viewController)
    }
}
