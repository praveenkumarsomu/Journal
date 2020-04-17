//
//  JournalRouter.swift
//  Journal
//
//  Created by Praveenkumar Somu on 16/4/2563 BE.
//  Copyright © 2563 praveen. All rights reserved.
//

import Foundation

final class JournalsRouter: Router<JournalViewController>, JournalsRouter.Routes {
    var createJournalTransition: Transition = PushTransaction()
    
    typealias Routes = CreateJournalRoute
}
