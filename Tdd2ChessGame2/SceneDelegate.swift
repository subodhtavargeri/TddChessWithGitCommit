
import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
//Need to revisit
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        self.window = UIWindow(windowScene: windowScene)
        
        let controller = GameTimerFactory.create()
        let navigationController = UINavigationController.init(rootViewController: controller)
        self.window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }

}

