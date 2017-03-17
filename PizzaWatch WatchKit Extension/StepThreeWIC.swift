//
//  StepThreeWIC.swift
//  PizzaWatch
//
//  Created by Johana Lopez on 16/03/17.
//  Copyright © 2017 Johana Lopez. All rights reserved.
//

import WatchKit
import Foundation


class StepThreeWIC: WKInterfaceController {

    var pizza : Pizza!
    var cheesse = ""
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        pizza = context as! Pizza
    }
    
    @IBAction func selectMozzarella() {
        self.cheesse = "Mozzarella"
        self.push(cheesse: self.cheesse)
    }
    
    @IBAction func selectCheddar() {
        self.cheesse = "Cheddar"
        self.push(cheesse: self.cheesse)
    }
    
    @IBAction func selectParmesano() {
        self.cheesse = "Parmesano"
        self.push(cheesse: self.cheesse)
    }
    
    @IBAction func selectNotCheesse() {
        self.cheesse = "Sin Queso"
        self.push(cheesse: self.cheesse)
    }
    
    
    private func push(cheesse:String) {
        pushController(withName: "Step4", context: Pizza(size: self.pizza.size, mass: self.pizza.mass, cheesse: self.cheesse, lstIngredients: []))
    }

    override func willActivate() {
        super.willActivate()
    }

    override func didDeactivate() {
        super.didDeactivate()
    }

}
