import UIKit
import ReactiveSwift

class JournalViewModel: NSObject {
    var journals: [Journal] = []
    var router: JournalsRouter
    init(router: JournalsRouter) {
        self.router = router
    }
    func fetchData() {
        showLoader()
        // after loading data hide loading
        hideLoader()
    }

    func showLoader() {
        // TODO:-  display loader
    }

    func hideLoader() {
        // TODO:-  hide loader
    }
}


extension JournalViewModel: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return journals.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: JournalCollectionViewCell.reuseIdentifier, for: indexPath) as! JournalCollectionViewCell
        let journal = journals[indexPath.row]
        cell.nameLabel.text = journal.name
        cell.journalDescription.text = journal.description
        return cell
    }
}
