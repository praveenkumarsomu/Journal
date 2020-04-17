//
//  JournalRouter.swift
//  Journal
//
//  Created by Praveenkumar Somu on 15/4/2563 BE.
//  Copyright © 2563 praveen. All rights reserved.
//

import UIKit

protocol JournalsRoute {
    var settingsTransition: Transition { get }
    func openJournalsModule()
}


extension JournalsRoute where Self: RouterProtocol {
    func openJournalsModule() {
        let journlasModule = JournalsModule()
        var transition = settingsTransition
        journlasModule.router.openTransition = transition
        open(viewController: journlasModule.viewController, transition: &transition)
    }
}

