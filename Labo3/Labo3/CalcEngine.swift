//
//  CalcEngine.swift
//  Labo3
//
//  Created by Boyd Bulcaen on 14/10/2025.
//


import Foundation

@Observable
class CalcEngine{
    private var stack = [Double]()
    private var numberText = ""
    var result = ""
    
    func addNumberText(number: Int){
        result.removeFirst(numberText.count)
        numberText = "\(numberText)\(number)"
        result = "\(numberText)\(result)"
    }
    
    func addNumber(){
        let number = Double(numberText)
        if let n = number{
            stack.append(n)
            result = "\n\(result)"
        }
        numberText = ""
    }
    
    func addOperator(){
        addNumber()
        result = "\n+\(result)"
        if checkNumberOfOperands(){
            let sum = stack.popLast()! + stack.popLast()!
            addCalcResult(calcResult: sum)
        }
    }
    
    func minusOperator(){
        addNumber()
        result = "\n-\(result)"
        if checkNumberOfOperands(){
            let diff = stack.popLast()! - stack.popLast()!
            addCalcResult(calcResult: diff)
        }
    }
    
    func multiplyOperator(){
        addNumber()
        result = "\n*\(result)"
        if checkNumberOfOperands(){
            let mult = stack.popLast()! * stack.popLast()!
            addCalcResult(calcResult: mult)
        }
    }
    
    func divideOperator(){
        addNumber()
        result = "\n/\(result)"
        if checkNumberOfOperands(){
            let div = stack.popLast()! / stack.popLast()!
            addCalcResult(calcResult: div)
        }
    }
    
    func clear(){
        result = ""
        numberText = ""
        stack = [Double]()
    }
    
    func showStack(){
        addNumber()
        result = "\n\(stack.description)\(result)"
    }
    
    private func addCalcResult(calcResult: Double){
        result = "\n\(calcResult)\(result)"
        stack.append(calcResult)
    }
        
    private func checkNumberOfOperands() -> Bool {
        if(stack.count < 2){
            result = "\not enough operands..\(result)"
            return false
        } else {
            return true
        }
    }
}
