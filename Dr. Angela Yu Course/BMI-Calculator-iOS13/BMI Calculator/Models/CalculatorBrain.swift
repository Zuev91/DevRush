import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue =  weight / pow(height, 2)
        switch bmiValue {
        case ..<18.5: bmi = BMI(value: bmiValue, advice: "Eat more pies", color: .blue)
        case ..<24.9: bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: .green)
        default: bmi = BMI(value: bmiValue, advice: "Eat less pies", color: .red)
        }
    }
    
    func getAdvace() -> String {
        return bmi?.advice ?? ""
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .black
    }
}
