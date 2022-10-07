
import Foundation
import UIKit

protocol PlayerTimerViewProtocol: AnyObject {
    func setTitle(title: String)
    func setPlayerOneTimer(time: String)
}
class PlayerTimerViewController: UIViewController {
    private var presenter: PlayerTimerPresenter?
    
    @IBOutlet weak var labelPlayerOneTimer: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter?.loadPresenter()
    }
    
    func setup(presenter: PlayerTimerPresenter) {
        self.presenter = presenter
    }
    
    @IBAction func buttonStartPressed(_ sender: Any) {
        presenter?.startGame()
    }
}

extension PlayerTimerViewController: PlayerTimerViewProtocol {
    
    func setTitle(title: String) {
        self.title = title
    }
    
    func setPlayerOneTimer(time: String) {
        labelPlayerOneTimer.text = time
    }
}
