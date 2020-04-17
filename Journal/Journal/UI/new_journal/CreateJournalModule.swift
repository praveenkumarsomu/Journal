import UIKit

final class CreateJournalModule {
    let router: CreateJournalRouter
    let viewController: CreateJournalViewController
    private let viewModel: CreateJournalViewModel
    init() {
        self.router = CreateJournalRouter()
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        viewController = storyBoard.instantiateViewController(withIdentifier: "CreateJournalViewController") as! CreateJournalViewController
        router.viewController = self.viewController
        viewModel = CreateJournalViewModel(router: router)
        viewController.viewModel = self.viewModel
    }
}
