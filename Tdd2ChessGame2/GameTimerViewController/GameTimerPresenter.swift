
import Foundation

protocol GameTimerPresenterProtocol {
    func load()
    func validateTime(time: String)
}
class GameTimerPresenter: GameTimerPresenterProtocol {
    
    private let gameTimer: GameTimerProtocol
    private weak var view: GameTimerView?
    private let router: GameTimerRouterProtocol
    
    init(view: GameTimerView,
         gameTimer: GameTimerProtocol,
         router: GameTimerRouterProtocol) {
        self.view = view
        self.gameTimer = gameTimer
        self.router = router
    }
    
    func load() {
        view?.setViewTitle(title: "Chess Timer")
    }
    
    func validateTime(time: String) {
        let valid = gameTimer.validateTime(time: time)
        if valid {
            successValidation()
            return
        }
        view?.showErrorMessage(message: "Please enter time in minutes")
    }
    
    private func successValidation() {
        view?.hideErrorMessage()
        if let gameTimerView = view as? GameTimerViewController {
            router.routeToPlayerTimer(controller: gameTimerView)
        }
    }
}
