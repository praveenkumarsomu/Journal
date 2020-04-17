import Foundation
import ReactiveSwift

class CreateJournalViewModel {
    var journal: Journal?
    let router: CreateJournalRouter
    var newJernal: MutableProperty<Journal?>!
   // var journalDescription: String?
    var journalDescription: MutableProperty<String>
    init(router: CreateJournalRouter) {
        self.router = router
        journalDescription = MutableProperty("")
    }
    func createJournal() {
        let journal = Journal(date: Date().toString(formatter: "DD/MM/YYYY"), name: "Praveen", description: journalDescription.value)
        newJernal.value = journal
    }
}
