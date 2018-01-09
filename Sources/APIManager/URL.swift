//
//  URL.swift
//  APIManager
//
//  Created by Rauhul Varma on 1/7/18.
//  Copyright © 2018 Rauhul Varma. All rights reserved.
//

import Foundation

extension URL {

    init?(base: String, paramaters: HTTPParameters?) {
        var urlString = base

        if let paramaters = paramaters {
            urlString += "?" + paramaters.map { return "\($0)=\($1)" }.joined(separator: "&")
        }
        
        self.init(string: urlString)
    }
    
}