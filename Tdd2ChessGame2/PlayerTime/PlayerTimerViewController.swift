
import Foundation
import UIKit

protocol PlayerTimerViewProtocol {
    
}
class PlayerTimerViewController: UIViewController {
    private var presenter: PlayerTimerPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func setup(presenter: PlayerTimerPresenter) {
        
    }
    
}

extension PlayerTimerViewController: PlayerTimerViewProtocol {
    
}
