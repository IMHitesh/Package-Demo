//
//  File.swift
//  
//
//  Created by Hitesh Surani on 16/01/23.
//

public enum Env {
    case development, stagging, production
}

public class AppConfig {
    let apiEndPoint: String?
    var env: Env?
    var style: Style
    
    public init(apiEndPoint: String, env: Env = Env.development, style: Style) {
        self.apiEndPoint = apiEndPoint
        self.env = env
        self.style = style
    }
}
