
import Foundation
import UIKit

protocol PlayerTimerViewProtocol: AnyObject {
    func setTitle(title: String)
}
class PlayerTimerViewController: UIViewController {
    private var presenter: PlayerTimerPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter?.loadPresenter()
    }
    
    func setup(presenter: PlayerTimerPresenter) {
        self.presenter = presenter
    }
    
}

extension PlayerTimerViewController: PlayerTimerViewProtocol {
    
    func setTitle(title: String) {
        self.title = title
    }
    
}
