//
//  ResultWIC.swift
//  PizzaWatch
//
//  Created by Johana Lopez on 16/03/17.
//  Copyright © 2017 Johana Lopez. All rights reserved.
//

import WatchKit
import Foundation


class ResultWIC: WKInterfaceController {

    @IBOutlet var lblSize: WKInterfaceLabel!
    @IBOutlet var lblMass: WKInterfaceLabel!
    @IBOutlet var lblCheesse: WKInterfaceLabel!
    @IBOutlet var lblIngredients: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        let pizza = context as! Pizza
        self.lblSize.setText(pizza.size)
        self.lblMass.setText(pizza.mass)
        self.lblCheesse.setText(pizza.cheesse)
        
        var ingredients = ""
        
        for i in pizza.lstIngredients {
            ingredients = "\(ingredients) - \(i) "
        }
        
        self.lblIngredients.setText(ingredients)
    }
    
    @IBAction func restart() {
        pushController(withName: "Init", context: nil)
    }

    override func willActivate() {
        super.willActivate()
    }

    override func didDeactivate() {
        super.didDeactivate()
    }

}
