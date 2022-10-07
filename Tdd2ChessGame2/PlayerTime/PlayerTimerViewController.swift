
import UIKit

protocol PlayerTimerViewProtocol: AnyObject {
    func setTitle(title: String)
    func setPlayerOneTimer(time: String)
    func setPlayerTwoTimer(time: String)
}
class PlayerTimerViewController: UIViewController {
    private var presenter: PlayerTimerPresenterProtocol?
    
    @IBOutlet weak var labelPlayerOneTimer: UILabel!
    @IBOutlet weak var labelPlayerTwoTimer: UILabel!
    
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
        presenter?.accessPlayerOne()
    }
    
    @IBAction func buttonPlayerTwoPressed(_ sender: Any) {
        presenter?.accessPlayerTwo()
    }
}

extension PlayerTimerViewController: PlayerTimerViewProtocol {
    
    func setTitle(title: String) {
        self.title = title
    }
    
    func setPlayerOneTimer(time: String) {
        labelPlayerOneTimer.text = time
    }
    
    func setPlayerTwoTimer(time: String) {
        labelPlayerTwoTimer.text = time
    }
}
