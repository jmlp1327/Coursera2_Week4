//
//  Pizza.swift
//  PizzaWatch
//
//  Created by Johana Lopez on 16/03/17.
//  Copyright © 2017 Johana Lopez. All rights reserved.
//

import WatchKit

class Pizza: NSObject {

    var size : String = ""
    var mass : String = ""
    var cheesse : String = ""
    var lstIngredients : [String] = []
    
    override init() {
        
    }
    
    init(size:String, mass:String, cheesse:String, lstIngredients:[String]) {
        self.size = size
        self.mass = mass
        self.cheesse = cheesse
        self.lstIngredients = lstIngredients
    }
    
}
