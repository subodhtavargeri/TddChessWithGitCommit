//
//  ViewController.swift
//  Tdd2ChessGame2
//
//  Created by Subodh Tavargeri on 05/10/22.
//

import UIKit

protocol GameTimerViewControllerDisplayLogic: AnyObject {
    func setControllerTitle(title: String)
    func routeToPlayerTimer()
    func invalidTimeEntered(message: String)
}

class GameTimerViewController: UIViewController {
    
    @IBOutlet weak var labelErrorMessage: UILabel!
    @IBOutlet weak var textFieldGameTimer: UITextField!
    
    private var presenter: GameTimerPresenter?
    private var router: GameTimerRouter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpInitialValue()
    }
    
    func setup(presenter: GameTimerPresenter,
               router: GameTimerRouter) {
        self.presenter = presenter
        self.router = router
    }
    
    private func setUpInitialValue() {
        self.presenter?.setTitle()
    }
    
    @IBAction func buttonDonePressed(_ sender: Any) {
        presenter?.validateTime(time: textFieldGameTimer.text ?? "")
    }
    
}

extension GameTimerViewController: GameTimerViewControllerDisplayLogic {
    func routeToPlayerTimer() {
        labelErrorMessage.isHidden = true
        router?.routeToPlayerTimer(controller: self)
    }
    
    func setControllerTitle(title: String) {
        self.title = title
    }
    
    func invalidTimeEntered(message: String) {
        labelErrorMessage.text = message
        labelErrorMessage.isHidden = false
    }
}

extension GameTimerViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        presenter?.validateTime(time: textField.text ?? "")
    }
    
}
