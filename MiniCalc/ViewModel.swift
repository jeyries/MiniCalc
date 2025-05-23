//
//  ViewModel.swift
//  MiniCalc
//
//  Created by Julien on 23/05/2025.
//

import Observation

@Observable
final class ViewModel {
    
    var display: String = ""
    var showingResult = false
    
    private let calculator = Calculator()
}

extension ViewModel {
    
    func press(_ key: String) {
        print("press", key)
        
        switch key {
        case "C":
            calculator.reset()
            display = ""
            
        case "P":
            calculator.pop()
            showResult()
            
        case "B":
            if !showingResult {
                display.removeLast()
            }
            
        case "E":
            if let value = Double(display) {
                calculator.push(value)
                display = ""
            } else {
                display = "ERROR"
            }
            
        case "+":
            calculator.add()
            showResult()
            
        case "-":
            calculator.substract()
            showResult()
            
        case "*":
            calculator.multiply()
            showResult()
            
        case "/":
            calculator.divide()
            showResult()
            
        default:
            if showingResult {
                showingResult = false
                display = ""
            }
            display.append(key)
        }
    }
    
    
    private func showResult() {
        if let result = calculator.result {
            display = String(format: "%g", result)
        } else {
            display = "ERROR"
        }
        showingResult = true
    }
}

