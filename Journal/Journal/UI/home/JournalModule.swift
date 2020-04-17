//
//  JournalModule.swift
//  Journal
//
//  Created by Praveenkumar Somu on 16/4/2563 BE.
//  Copyright © 2563 praveen. All rights reserved.
//

import Foundation

final class JournalsModule {
    let router: JournalsRouter
       let viewController: JournalViewController

       private let viewModel: JournalViewModel

    init() {
        let router = JournalsRouter()
        let viewController = storyBoard.instantiateViewController(withIdentifier: "JournalViewController") as! JournalViewController
        router.viewController = viewController
        let viewModel = JournalViewModel(router: router)
        viewController.viewmodel = viewModel
        self.router = router
        self.viewController = viewController
        self.viewModel = viewModel
    }
}
