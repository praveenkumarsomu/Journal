//
//  Animator.swift
//  Journal
//
//  Created by Praveenkumar Somu on 15/4/2563 BE.
//  Copyright © 2563 praveen. All rights reserved.
//

import UIKit

protocol Animator: UIViewControllerAnimatedTransitioning {
    var isPresenting: Bool { get set }
}
