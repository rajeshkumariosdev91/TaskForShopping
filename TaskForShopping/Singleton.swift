//
//  Singleton.swift
//  TaskForShopping
//
//  Created by Santosh kumar on 1/12/19.
//  Copyright © 2019 Santosh kumar. All rights reserved.
//

import Foundation
class Singleton {
    
    static let shared = Singleton()
    private init(){}
    var cartArray = [[String:Any]]()
}
