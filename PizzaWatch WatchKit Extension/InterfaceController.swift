//
//  InterfaceController.swift
//  PizzaWatch WatchKit Extension
//
//  Created by Johana Lopez on 16/03/17.
//  Copyright © 2017 Johana Lopez. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var btnSmall: WKInterfaceButton!
    @IBOutlet var btnMedium: WKInterfaceButton!
    @IBOutlet var btnBig: WKInterfaceButton!
    var size = ""
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
    }
    
    @IBAction func selectSmall() {
        self.size = "Pequeña"
        self.push(size: self.size)
    }
    
    @IBAction func selectMedium() {
        self.size = "Mediana"
        self.push(size: self.size)
    }
    
    
    @IBAction func selectBig() {
        self.size = "Grande"
        self.push(size: self.size)
    }
    
    private func push(size:String) {
        pushController(withName: "Step2", context: Pizza(size: size, mass: "", cheesse: "", lstIngredients: []))
    }
    
    override func willActivate() {
        super.willActivate()
    }
    
    override func didDeactivate() {
        super.didDeactivate()
    }

}
