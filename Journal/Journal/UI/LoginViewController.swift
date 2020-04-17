import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    var viewModel: LoginViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func loginClicked(_ sender: Any) {
        viewModel.router.openJournalsModule()
    }
}

