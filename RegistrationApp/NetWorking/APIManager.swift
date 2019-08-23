//
//  APIManager.swift
//  RegistrationApp
//
//  Created by ios on 7/25/19.
//  Copyright © 2019 ThirdDoploma. All rights reserved.
//

import Foundation
import Alamofire

class APIManager {
    static func getPost(){
        let url = "https://jsonplaceholder.typicode.com/posts"
        
        Alamofire.request(url, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil).responseJSON { (response) in
            switch response.result{
                case.failure( let error)
                PROT_NONE
            }
            
        }
    }
    
    
}
