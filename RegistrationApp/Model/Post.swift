//
//  Post.swift
//  RegistrationApp
//
//  Created by ios on 8/1/19.
//  Copyright © 2019 ThirdDoploma. All rights reserved.
//

import Foundation
struct Post : Codable {
    var userId: Int
    var id: Int
    var myTitle: String
    var body: String
    
    private enum CodingKeys: String, CodingKey {
        case userId
        case id
        case myTitle = "title"
        case body
    }
 
}
