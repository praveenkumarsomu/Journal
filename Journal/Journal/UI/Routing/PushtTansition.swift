//
//  Pushtransition.swift
//  Journal
//
//  Created by Praveenkumar Somu on 15/4/2563 BE.
//  Copyright © 2563 praveen. All rights reserved.
//

import UIKit

class PushTransaction: NSObject {
    var animator: Animator?
    var isAnimated: Bool = true
    var completionHandler: (() -> Void)?
    weak var viewController: UIViewController?
    
    init(animator: Animator? = nil, isAnimated: Bool = true) {
        self.animator = animator
        self.isAnimated = isAnimated
    }
}

extension PushTransaction: Transition {
    func open(viewController: UIViewController) {
        self.viewController?.navigationController?.pushViewController(viewController, animated: isAnimated)
    }
    
    func close(viewController: UIViewController) {
        self.viewController?.navigationController?.popViewController(animated: isAnimated)
    }
}

extension PushTransaction : UINavigationControllerDelegate {
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        completionHandler?()
    }

    func navigationController(_ navigationController: UINavigationController,
                              animationControllerFor operation: UINavigationController.Operation,
                              from fromVC: UIViewController,
                              to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        guard let animator = animator else {
            return nil
        }
        if operation == .push {
            animator.isPresenting = true
            return animator
        }
        else {
            animator.isPresenting = false
            return animator
        }
    }
}
