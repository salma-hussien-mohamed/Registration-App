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
    static func getPost(completion: @escaping (_ error: String?,_ posts: [Post]?) -> Void){
        let url = "https://jsonplaceholder.typicode.com/posts"
        Alamofire.request(url, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil).responseJSON { (response) in
            switch response.result{
            case.failure( let error):
                print(error.localizedDescription)
                completion(error.localizedDescription,nil)
            case.success(_):
                print(response.result.value)
                guard let data = response.data else {
                    print("didnot get any data from Api")
                    completion("didnot get any data from Api",nil)
                    return
                }
                do{
                    let posts = try JSONDecoder().decode([Post].self, from: data)
                    print(posts.first?.myTitle)
                    completion(nil,posts)
                }catch{
                    print("error")
                    print(error.localizedDescription)
                    completion("error",nil)
                    
                }
            }
            
        }
    }
    
}
