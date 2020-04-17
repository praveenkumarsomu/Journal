import Foundation
import ReactiveSwift

protocol CreateJournalRoute {
    var createJournalTransition: Transition { get set }
    func openCreateJournalModule(newJournal: MutableProperty<Journal?>)
}
 
extension CreateJournalRoute where Self: RouterProtocol {
    func openCreateJournalModule(newJournal: MutableProperty<Journal?>) {
        let createJournalModule = CreateJournalModule()
        createJournalModule.viewController.viewModel.newJernal = newJournal
        var transition = createJournalTransition
        createJournalModule.router.openTransition = createJournalTransition
        open(viewController: createJournalModule.viewController, transition: &transition)
    }
}
