//
//  Transition.swift
//  Journal
//
//  Created by Praveenkumar Somu on 15/4/2563 BE.
//  Copyright © 2563 praveen. All rights reserved.
//

import UIKit

protocol Transition {
    var viewController: UIViewController? { get set }
    func open(viewController: UIViewController)
    func close(viewController: UIViewController)
}
