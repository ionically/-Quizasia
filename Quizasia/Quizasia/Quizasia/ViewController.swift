//
//  ViewController.swift
//  Quizasia
//
//  Created by chandni chaudhari on 30/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tickCorrectImageView: UIImageView!
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
    var currentQuestionIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeArray()
        makeLabel()
        onlyhideAnswerButtonClick()
        loadQuestion()
        
    }
    
    func openScoardBoard() {
        let storyBoard = self.storyboard?.instantiateViewController(withIdentifier: "scoreBoard") as! ScoreBoardViewController
        self.navigationController?.pushViewController(storyBoard, animated: true)
    }
    
    @IBAction func correctAnswerClick1(_ sender: Any) {
        //Show green tick
        //also called closure
        //Load the next question
        //whenever we call fun inside function we call self
        onlyshowAnwersButtonClick()
        let seconds = 1.0
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) { [weak self] in
            // Put your code which should be executed with a delay here
            print("After one second code")
            self?.onlyhideAnswerButtonClick()
            self?.incrementCounter()
            self?.loadQuestion()
            self?.showScoreBoard()
        }
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
    }
    
    func showScoreBoard() {
        //check if it is a last question
        //display the scoreboard
        if currentQuestionIndex == 5 {
            openScoardBoard()
            //display the scoreboard
        }//end of if statement
        
//        if condition {
//
//        }
//
    }
    
    func incrementCounter() {
        guard currentQuestionIndex < textArray.count else {
            return
        }
       
        /*
         past works for understanding
         but more and all people use guard
         if currentQuestionIndex < textArray.count {
             currentQuestionIndex += 1
               print("We are printing current index \(currentQuestionIndex)")
         }else {
             return
         }
         currentQuestionIndex = 0 < 5 -> complier will go to line 83 and continue working
         currentQuestionIndex = 1 < 5 -> complier will go to line 83 and continue working
         currentQuestionIndex = 2 < 5 -> complier will go to line 83 and continue working
         currentQuestionIndex = 3 < 5 -> complier will go to line 83 and continue working
         currentQuestionIndex = 4 < 5 -> complier will go to line 83 and continue working
         currentQuestionIndex = 5 < 5 -> return
         
         */
         
      currentQuestionIndex += 1
        print("We are printing current index \(currentQuestionIndex)")
    }//end of func incrementCounter
    //_ direct pass*
    //indirectly label name
    //camel casing first small to big case
    //guard is used to check anything
    func loadQuestion() {
        
        guard !textArray.isEmpty, !answer.isEmpty else {
            return
        }
        
        guard currentQuestionIndex >= 0,
              currentQuestionIndex < textArray.count,
              currentQuestionIndex < answer.count else { return }
        
        lblExpression.text = (textArray[currentQuestionIndex]) //text array zeroth element
        button2.setTitle("\(answer[currentQuestionIndex])", for: .normal)
        
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
    
    func onlyshowAnwersButtonClick() {
        tickCorrectImageView.isHidden = false
    }
    
    func onlyhideAnswerButtonClick() {
        tickCorrectImageView.isHidden = true
    }
    
    
}
