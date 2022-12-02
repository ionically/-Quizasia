//
//  ViewController.swift
//  Quizasia
//
//  Created by chandni chaudhari on 30/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var lblExpression: UILabel!
    var answer = [Int]()
    var leftNumber = [Int]()
    var rightNumber = [Int]()
    var operatorArray = [String]()
    var textArray = [String]()
    let equalSign = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeArray()
        makeLabel()
        
    }
    
    // MARK: Data
    //used inbuilt function
    //screen = storyboard = UI words use karo
    //design
    //code development
    
    func makeLabel() {
        //hardcoded = fixed value never or dont try to depend on hard coded value
        let totalQues = 5
       // for i in 0..<leftNumber.count
        for i in 0..<totalQues {
           let label = "\(leftNumber[i]) \(operatorArray[i]) \(rightNumber[i]) = ?"
            textArray.append(label)
        }//button for normal == state*(pattern)
        print(textArray)
        lblExpression.text = (textArray[0]) //text array zeroth element
        button2.setTitle("\(answer[0])", for: .normal)
        
        let randomOption1 = Int.random(in: 0..<6000)// word is random works for picking up automatically from o till 6000
        button1.setTitle("\(randomOption1)", for: .normal)
        
        let randomOption2 = Int.random(in: 0..<6000)
        button3.setTitle("\(randomOption2)", for: .normal)
        
        let randomOption3 = Int.random(in: 0..<6000)
        button4.setTitle("\(randomOption3)", for: .normal)
        
    }
    
    func makeArray() {
        
      
        leftNumber.append(75)
        leftNumber.append(25)
        leftNumber.append(35)
        leftNumber.append(10)
        leftNumber.append(15)
        
        
       
        rightNumber.append(2)
        rightNumber.append(4)
        rightNumber.append(35)
        rightNumber.append(20)
        rightNumber.append(7)
        
        
        
        
        answer.append(73)
        answer.append(29)
        answer.append(0)
        answer.append(30)
        answer.append(8)
        
        operatorArray.append("-")
        operatorArray.append("+")
        operatorArray.append("-")
        operatorArray.append("+")
        operatorArray.append("-")
        
        
        
    }
    
    
    
    
    
}
