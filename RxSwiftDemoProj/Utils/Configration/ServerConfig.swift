//
//  ServerConfig.swift
//  RxSwiftDemoProj
//
//  Created by Neosoft on 18/10/23.
//

import Foundation


enum Baseurl:String{
    case Production = "https://www.google.com/"
    case Dev = "https://www.instagram.com/"
    case Staging = "https://www.facebook.com/"
    case Uat = "https://github.com/topics/rxswift-examples"
}
class ServerConfig{
    static let shared = ServerConfig()
    var baseUrl : String?
    func setupSeverConfig(){
        #if Production
        self.baseUrl = Baseurl.Production.rawValue
        #elseif Dev
        self.baseUrl = Baseurl.Dev.rawValue
        #elseif Staging
        self.baseUrl = Baseurl.Staging.rawValue
        #elseif Uat
        self.baseUrl = Baseurl.Uat.rawValue
        #endif
    }
    
}
