import UIKit

public enum Env {
    case development, stagging, production
}

public class AppConfig {
    let apiEndPoint: String?
    var env: Env?
    
    public init(apiEndPoint: String, env: Env = Env.development) {
        self.apiEndPoint = apiEndPoint
        self.env = env
    }
}

public class MyLibrary {
    let appConfig: AppConfig
    
    public init(appConfig: AppConfig) {
        self.appConfig = appConfig
    }

    public func initApp() -> UIViewController{
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.module)
        let vc = storyboard.instantiateViewController(withIdentifier: "AuthModule")
        vc.view.backgroundColor = .red        
        return vc
    }
}
