
import Foundation
@testable import Tdd2ChessGame2
import XCTest

class PlayerGamePresenterTests: XCTest {
    
    //  let sut: PlayerGamePresenter
    
//    override func setUp() {
//        <#code#>
//    }
    
    
    func testLoadPresenter() {
      let view = GameTimerViewControllerSpy()
      let gameTimer = GameTimerTestsSpy()
      let router = GameTimerRouterSpy()
      let sut = GameTimerPresenter(view: <#T##GameTimerView#>, gameTimer: <#T##GameTimerProtocol#>, router: <#T##GameTimerRouterProtocol#>)
    }
}

