//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Antonio Silva on 20/03/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmi: String = "0.0"
    
    mutating func calculatorBMI(height: Float, weight: Float) {
        let bmi = height / pow(weight, 2)
        self.bmi = String(format: "%.2f", bmi)
    }
    
    mutating func getBMIValue() -> String {
        return bmi
    }
}
