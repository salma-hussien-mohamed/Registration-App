//
//  TrimString.swift
//  RegistrationApp
//
//  Created by ios on 7/8/19.
//  Copyright © 2019 ThirdDoploma. All rights reserved.
//

import UIKit

extension String {
    
    func isBlank() -> String {
        guard !self.isEmpty else {
            return "empty"
        }
        let result = self.trimmingCharacters(in: .whitespacesAndNewlines)
        return result
    }
}
