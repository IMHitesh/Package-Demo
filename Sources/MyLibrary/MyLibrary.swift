import UIKit

var globalAppConfig: AppConfig?
public class MyLibrary {
    let appConfig: AppConfig
    
    public init(appConfig: AppConfig) {
        self.appConfig = appConfig
        globalAppConfig = appConfig
    }

    public func initApp() -> UIViewController{
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.module)
        let vc = storyboard.instantiateViewController(withIdentifier: "AuthModule")
        vc.view.backgroundColor = .red        
        return vc
    }
}
