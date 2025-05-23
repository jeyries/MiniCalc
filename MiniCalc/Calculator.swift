//
//  Calculator.swift
//  MiniCalc
//
//  Created by Julien on 23/05/2025.
//

class Calculator {
    
    private var hasError = false
    private var stack: [Double] = []
    
    func reset() {
        hasError = false
        stack.removeAll()
    }
    
    func push(_ value: Double) {
        stack.append(value)
    }
    
    func pop() {
        stack.removeLast()
    }
    
    func add() {
        guard let a = stack.popLast(),
              let b = stack.popLast() else {
            hasError = true
            return
        }
        let c = a + b
        stack.append(c)
    }
    
    func substract() {
        guard let a = stack.popLast(),
              let b = stack.popLast() else {
            hasError = true
            return
        }
        let c = a - b
        stack.append(c)
    }
    
    func multiply() {
        guard let a = stack.popLast(),
              let b = stack.popLast() else {
            hasError = true
            return
        }
        let c = a * b
        stack.append(c)
    }
    
    func divide() {
        guard let a = stack.popLast(),
              let b = stack.popLast(), b != 0 else {
            hasError = true
            return
        }
        let c = a / b
        stack.append(c)
    }
    
    var result: Double? {
        guard !hasError else { return nil }
        return stack.last
    }
}
