//
//  StepFourWIC.swift
//  PizzaWatch
//
//  Created by Johana Lopez on 16/03/17.
//  Copyright © 2017 Johana Lopez. All rights reserved.
//

import WatchKit
import Foundation


class StepFourWIC: WKInterfaceController {

    @IBOutlet var btnIng1: WKInterfaceButton!
    @IBOutlet var btnIng2: WKInterfaceButton!
    @IBOutlet var btnIng3: WKInterfaceButton!
    @IBOutlet var btnIng4: WKInterfaceButton!
    @IBOutlet var btnIng5: WKInterfaceButton!
    @IBOutlet var btnIng6: WKInterfaceButton!
    @IBOutlet var btnIng7: WKInterfaceButton!
    @IBOutlet var btnIng8: WKInterfaceButton!
    
    let greenColor = UIColor(red: 0/255, green: 179/255, blue: 70/255, alpha: 1)
    let blackColor = UIColor(red: 34/255, green: 34/255, blue: 34/255, alpha: 1)
    
    var pizza : Pizza!
    private var lstIngredients : [String] = []
    private var count = 0
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        pizza = context as! Pizza
    }
    
    @IBAction func addIng1() {
        if let index = self.lstIngredients.index(of: "Anchoas") {
            self.lstIngredients.remove(at: index)
            self.btnIng1.setBackgroundColor(blackColor)
            self.count = self.count - 1
        } else {
            if count < 5 {
                self.btnIng1.setBackgroundColor(greenColor)
                self.lstIngredients.append("Anchoas")
                self.count = self.count + 1
            }
        }
       
    }
    
    @IBAction func addIng2() {
        if let index = self.lstIngredients.index(of: "Aceitunas") {
            self.lstIngredients.remove(at: index)
            self.btnIng2.setBackgroundColor(blackColor)
            self.count = self.count - 1
        } else {
            if count < 5 {
                self.btnIng2.setBackgroundColor(greenColor)
                self.lstIngredients.append("Aceitunas")
                self.count = self.count + 1
            }
        }
    }
    
    @IBAction func addIng3() {
        if let index = self.lstIngredients.index(of: "Jamón") {
            self.lstIngredients.remove(at: index)
            self.btnIng3.setBackgroundColor(blackColor)
            self.count = self.count - 1
        } else {
            if count < 5 {
                self.btnIng3.setBackgroundColor(greenColor)
                self.lstIngredients.append("Jamón")
                self.count = self.count + 1
            }
        }
    }
    
    @IBAction func addIng4() {
        if let index = self.lstIngredients.index(of: "Cebollas") {
            self.lstIngredients.remove(at: index)
            self.btnIng4.setBackgroundColor(blackColor)
            self.count = self.count - 1
        } else {
            if count < 5 {
                self.btnIng4.setBackgroundColor(greenColor)
                self.lstIngredients.append("Cebollas")
                self.count = self.count + 1
            }
        }
    }
    
    @IBAction func addIng5() {
        if let index = self.lstIngredients.index(of: "Piña") {
            self.lstIngredients.remove(at: index)
            self.btnIng5.setBackgroundColor(blackColor)
            self.count = self.count - 1
        } else {
            if count < 5 {
                self.btnIng5.setBackgroundColor(greenColor)
                self.lstIngredients.append("Piña")
                self.count = self.count + 1
            }
        }
    }
    
    @IBAction func addIng6() {
        if let index = self.lstIngredients.index(of: "Maiz") {
            self.lstIngredients.remove(at: index)
            self.btnIng6.setBackgroundColor(blackColor)
            self.count = self.count - 1
        } else {
            if count < 5 {
                self.btnIng6.setBackgroundColor(greenColor)
                self.lstIngredients.append("Maiz")
                self.count = self.count + 1
            }
        }
    }
    
    @IBAction func addIng7() {
        if let index = self.lstIngredients.index(of: "Hongos") {
            self.lstIngredients.remove(at: index)
            self.btnIng7.setBackgroundColor(blackColor)
            self.count = self.count - 1
        } else {
            if count < 5 {
                self.btnIng7.setBackgroundColor(greenColor)
                self.lstIngredients.append("Hongos")
                self.count = self.count + 1
            }
        }
    }
    
    @IBAction func addIng8() {
        
        if let index = self.lstIngredients.index(of: "Peperoni") {
            self.lstIngredients.remove(at: index)
            self.btnIng8.setBackgroundColor(blackColor)
            self.count = self.count - 1
        } else {
            if count < 5 {
                self.btnIng8.setBackgroundColor(greenColor)
                self.lstIngredients.append("Peperoni")
                self.count = self.count + 1
            }
        }
    }
    
    @IBAction func openResult() {
        if (count > 0) {
            pushController(withName: "Result", context: Pizza(size: self.pizza.size, mass: self.pizza.mass, cheesse: self.pizza.cheesse, lstIngredients: self.lstIngredients))
        }
    }
    
    
    override func willActivate() {
        super.willActivate()
    }

    override func didDeactivate() {
        super.didDeactivate()
    }

}
