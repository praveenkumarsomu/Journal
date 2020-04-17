import UIKit
import ReactiveCocoa
import ReactiveSwift

class CreateJournalViewController: UIViewController {
    var viewModel: CreateJournalViewModel!
    @IBOutlet weak var journalTextView: UITextView!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var journalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        addBorderToTextView()
        observeValues()
    }
    func observeValues() {
        viewModel.journalDescription <~ journalTextView.reactive.continuousTextValues
        
    }
    func addBorderToTextView() {
        journalTextView.layer.cornerRadius = 4
        journalTextView.layer.borderWidth = 1
        journalTextView.layer.borderColor = UIColor.lightGray.cgColor
    }
    @IBAction func saveJournal(_ sender: UIButton) {
        viewModel.createJournal()
        viewModel.router.close()
        journalTextView.reactive.textValues.observeValues({ (value) in
            print(value)
        })
    }
    
}
