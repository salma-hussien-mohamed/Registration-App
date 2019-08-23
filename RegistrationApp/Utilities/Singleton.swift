//
//  Singleton.swift
//  RegistrationApp
//
//  Created by ios on 7/8/19.
//  Copyright © 2019 ThirdDoploma. All rights reserved.
//

import UIKit
import Foundation


    struct Userdefaultss {
        //private let shared = Userdefaultss()
        
        private let def = UserDefaults.standard
        
         func set (object:String!, key:String!){
            def.set(object, forKey:key)
            def.synchronize()
        }
        
         func get (key:String!) -> String{
            let objectt = def.object(forKey: key) as? String
            return objectt!
        }


        private init() {
        }
    }
    

