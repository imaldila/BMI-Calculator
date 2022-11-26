//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Apit Gilang Aprida on 11/24/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float)   {
        let bmivalue = weight / (height * height)
        if bmivalue < 18.5 {
            bmi = BMI(value: bmivalue, advice: "Underweight", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
            
        } else if bmivalue > 24.9 {
            bmi = BMI(value: bmivalue, advice: "Overweight", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
            
        } else {
            bmi = BMI(value: bmivalue, advice: "Normal", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
            
        }
       
    }
    
    func getBMIValue() -> String {
        let bmiParsed = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiParsed
    }
    
    func getAdvice() -> String  {
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}
