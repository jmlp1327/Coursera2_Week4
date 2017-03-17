//
//  StepTwoWIC.swift
//  PizzaWatch
//
//  Created by Johana Lopez on 16/03/17.
//  Copyright © 2017 Johana Lopez. All rights reserved.
//

import WatchKit
import Foundation


class StepTwoWIC: WKInterfaceController {

    var pizza : Pizza!
    var mass = ""
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        pizza = context as! Pizza
    }
    
    @IBAction func selectCrunchy() {
        self.mass = "Crujiente"
        self.push(mass: self.mass)
    }
    
    @IBAction func selectThin() {
        self.mass = "Delgada"
        self.push(mass: self.mass)
    }

    @IBAction func selectHeavy() {
        self.mass = "Gruesa"
        self.push(mass: self.mass)
    }
    
    private func push(mass:String) {
        pushController(withName: "Step3", context: Pizza(size: self.pizza.size, mass: mass, cheesse: "", lstIngredients: []))
    }
    
    
    override func willActivate() {
        super.willActivate()
    }

    override func didDeactivate() {
        super.didDeactivate()
    }

}
