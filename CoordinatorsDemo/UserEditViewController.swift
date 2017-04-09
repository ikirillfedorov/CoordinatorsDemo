import UIKit

final class UserEditViewController: UIViewController {
    
    // MARK: - Input -
    var user: User? { didSet { updateView() } }
    
    // MARK: - Output -
    var onSelectCity: (() -> Void)?
    
    @IBOutlet private weak var userLabel: UILabel!
    @IBAction private func selectCityTap(_ sender: UIButton) {
        onSelectCity?()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        updateView()
    }
    
    private func updateView() {
        if isViewLoaded && view.window != nil {
            userLabel.text = "User: \(user?.name ?? ""), \n"
                           + "City: \(user?.city?.name ?? "")"
        }
    }
}
