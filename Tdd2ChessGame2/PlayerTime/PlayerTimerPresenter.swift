
import Foundation

protocol PlayerTimerPresenterProtocol:AnyObject {
    func loadPresenter()
    func startGame()
    func displayPlayerOneTimer(playerOneTimer: Int)
    func displayPlayerTwoTimer(playerTwoTimer: Int)
    func accessPlayerOne()
    func accessPlayerTwo()
}
class PlayerTimerPresenter: PlayerTimerPresenterProtocol {
    
    weak var controller: PlayerTimerViewProtocol?
    let game: GameProtocol?
    
    init(controller: PlayerTimerViewProtocol,
         game: GameProtocol) {
        self.controller = controller
        self.game = game
    }
    
    func loadPresenter() {
        setViewTitle()
    }
    
    private func setViewTitle() {
        self.controller?.setTitle(title: "Player Timer")
    }
    
    func startGame() {
        game?.gameStart(gameTime: 10)
    }
    
    func displayPlayerOneTimer(playerOneTimer: Int) {
        if playerOneTimer == 0 {
            controller?.setPlayerOneTimer(time: "Player One Lost")
            controller?.setPlayerTwoTimer(time: "Player Two Won")
            return
        }
        controller?.setPlayerOneTimer(time: "\(playerOneTimer)")
    }
    
    func displayPlayerTwoTimer(playerTwoTimer: Int) {
        if playerTwoTimer == 0 {
            controller?.setPlayerOneTimer(time: "Player One Won")
            controller?.setPlayerTwoTimer(time: "Player Two Lost")
            return
        }
        controller?.setPlayerTwoTimer(time: "\(playerTwoTimer)")
    }
    
    func accessPlayerOne() {
        let current = game?.getCurrentPlayer()
        
        if current == CurrentPlayer.playerOne {
            game?.stopPlayerOne()
            game?.playerTwoResume()
        }
        else {
            
        }
    }
    
    func accessPlayerTwo() {
        let current = game?.getCurrentPlayer()
        
        if current == CurrentPlayer.playerTwo {
            game?.stopPlayerTwo()
            game?.playerOneResume()
        }
        else {
            
        }
    }
    
}
