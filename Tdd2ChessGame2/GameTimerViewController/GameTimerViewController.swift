//
//  ViewController.swift
//  Tdd2ChessGame2
//
//  Created by Subodh Tavargeri on 05/10/22.
//

import UIKit

protocol GameTimerView: AnyObject {
    func setViewTitle(title: String)
    func hideErrorMessage()
    func showErrorMessage(message: String)
}

class GameTimerViewController: UIViewController {
    
    @IBOutlet weak var labelErrorMessage: UILabel!
    @IBOutlet weak var textFieldGameTimer: UITextField!
    
    private var blankString = ""
    private var presenter: GameTimerPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpInitialValue()
    }
    
    func setup(presenter: GameTimerPresenterProtocol) {
        self.presenter = presenter
    }
    
    private func setUpInitialValue() {
        self.presenter?.load()
    }
    
    @IBAction func buttonDonePressed(_ sender: Any) {
        presenter?.validateTime(time: textFieldGameTimer.text ?? blankString)
    }
    
}

extension GameTimerViewController: GameTimerView {
    func hideErrorMessage() {
        labelErrorMessage.isHidden = true
    }
    
    func setViewTitle(title: String) {
        self.title = title
    }
    
    func showErrorMessage(message: String) {
        labelErrorMessage.text = message
        labelErrorMessage.isHidden = false
    }
}

extension GameTimerViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        presenter?.validateTime(time: textField.text ?? blankString)
    }
}
