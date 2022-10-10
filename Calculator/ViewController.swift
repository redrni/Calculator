//
//  ViewController.swift
//  Calculator
//
//  Created by Наталья Карпова on 10.10.2022.
//

import UIKit

class ViewController: UIViewController {

//    Строка для отбражения вычислений
    @IBOutlet weak var resultConsole: UILabel!
//    Переменная для первого числа
    var numberOne: String = ""
    //    Переменная для второго числа
    var numberTwo: String = ""
    //    Переменная для хранения операнда
    var operand: String = ""
    
//    Функция обработки нажатия на цифры
    @IBAction func tappedDigital (_ sender: UIButton) {
        if operand.isEmpty {
            numberOne += (sender.titleLabel?.text)!
            resultConsole.text = numberOne
        } else {
            numberTwo += (sender.titleLabel?.text)!
            resultConsole.text = numberTwo
        }
        
    }
    
    //    Функция обработки нажатия операнда
    @IBAction func tappedOperand (_ sender: UIButton) {
        operand = (sender.titleLabel?.text)!
    }
    
    //    Функция обработки нажатия на кнопку результата
    @IBAction func resultAction (_ sender: UIButton) {
        var result: Double = 0.0
        
        switch operand {
        case "+":
            result = additional(a: numberOne, b: numberTwo)
        case "-":
            result = substraction(a: numberOne, b: numberTwo)
        case "*":
            result = multiplication(a: numberOne, b: numberTwo)
        case "/":
            result = division(a: numberOne, b: numberTwo)
        default:
            break
        }
        showResult(number: result)
    }
    
    //    Функция сложения
    func additional(a: String, b: String) -> Double {
        return Double(a)! + Double(b)!
    }
    
    //    Функция деления
    func division(a: String, b: String) -> Double {
        return Double(a)! / Double(b)!
    }
    
    //    Функция умножения
    func multiplication(a: String, b: String) -> Double {
        return Double(a)! * Double(b)!
    }
    
    //    Функция вычитания
    func substraction(a: String, b: String) -> Double {
        return Double(a)! - Double(b)!
    }
    
    //    Функция отображения результата
    func showResult(number:Double) {
        if number.truncatingRemainder(dividingBy: 1.0) == 0.0 {
            resultConsole.text = String(Int(number))
        } else {
            resultConsole.text = String(number)
        }
    }
    //    Функция обработки обнуления калькулятора
    @IBAction func clearCalculator (_ sender: UIButton) {
        numberOne = ""
        numberTwo = ""
        operand = ""
        resultConsole.text = "0"
    }
    
}

