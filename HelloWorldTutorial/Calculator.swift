//
//  Calculator.swift
//  HelloWorldTutorial
//
//  Created by Till J. Ernst on 08.05.17.
//  Copyright © 2017 Till J. Ernst. All rights reserved.
//

import Foundation

class CalculatorPredator: ViewController {
    var total : Double = 0.0
    
    // set initial value
    // -> Optional Parameters
    func setInitialValue(value: Double = 0.0) {
        self.total = value
    }
    
    // add multiple parameters
    // -> variadic parameters
    func addNumbers(numbers: Double...) -> Double {
        for number in numbers {
            self.total += number
        }
        return self.total
    }
    
    // clears calculator
    func clear () {
        self.total = 0.0
    }
    
    // returns total
    func getTotal () -> Double {
        return total
    }
    
    // add something to the total
    func addToTotal (value: Double) -> Double {
        self.total += value
        return self.total
    }
    
    // subtract value from total
    func subtractFromTotal (value: Double) -> Double {
        self.total -= value
        return self.total
    }
    
    // multiply total by value
    func multiplyByTotal(value: Double) -> Double {
        self.total *= value
        return self.total
    }
    
    // divides value into the total
    func divideIntoTotal(value: Double) -> Double {
        self.total /= value
        return self.total
    }
    
    func mutliply (a: Double, times b: Double) -> Double {
        return a * b
    }
    
}
