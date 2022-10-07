
import Foundation
import UIKit

protocol PlayerTimerViewProtocol: AnyObject {
    func setTitle(title: String)
    func setPlayerOneTimer(time: String)
}
class PlayerTimerViewController: UIViewController {
    private var presenter: PlayerTimerPresenterProtocol?

    @IBOutlet weak var labelPlayerOneTimer: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter?.loadPresenter()
    }
    
    func setup(presenter: PlayerTimerPresenterProtocol) {
        self.presenter = presenter
    }
    
    @IBAction func buttonStartPressed(_ sender: Any) {
        presenter?.startGame()
    }
    
    @IBAction func buttonPlayerOnePressed( _ sender: Any) {
        presenter?.stopPlayerOne()
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
