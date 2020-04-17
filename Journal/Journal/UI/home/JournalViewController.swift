import UIKit
import ReactiveSwift

class JournalViewController: UIViewController {
    enum State {
        case Loading
        case LoadingDone
        case Display
    }
    var viewmodel: JournalViewModel?
    @IBOutlet weak var collectionView: UICollectionView!
    var newJournal: MutableProperty<Journal?> = MutableProperty(nil)
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.setHidesBackButton(true, animated: true)
        registerCellClasses()
        createCollectionViewLayout()
        collectionView.dataSource = viewmodel
        viewmodel?.fetchData()
        newJournal = MutableProperty(nil)
        registerForNewJournalUpdates()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    func registerForNewJournalUpdates() {
        newJournal.signal.observeValues({ (journal) in
            if let journal = journal {
                self.viewmodel?.journals.insert(journal, at: 0)
                self.collectionView.reloadData()
            }
        })
    }
    func registerCellClasses() {
        collectionView.register(JournalCollectionViewCell.nib, forCellWithReuseIdentifier: JournalCollectionViewCell.reuseIdentifier)
    }
    func createCollectionViewLayout() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.estimatedItemSize = CGSize(width: collectionView.frame.width, height: 80)
        collectionView.collectionViewLayout = layout
    }
    @IBAction func openCreateJournalModule(_ sender: Any) {
        viewmodel?.router.openCreateJournalModule(newJournal: newJournal)
    }
}

extension JournalViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //navigateToController()
    }
}
