//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    var questionNumber : Int = 1
    let allQuestions : QuestionBank = QuestionBank()
    var pickedAnswer : Bool = false
    var currentScore : Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            pickedAnswer = true
        } else {
            pickedAnswer = false
        }
        checkAnswer()
        nextQuestion()
    }
    
    
    func updateUI() {
        questionLabel.text = allQuestions.list[questionNumber - 1].questionText
        progressLabel.text = "\(questionNumber)/13"
        scoreLabel.text = "Score: \(currentScore)"
        progressBar.frame.size.width = (view.frame.size.width / 13 ) * CGFloat(questionNumber)
    }
    

    func nextQuestion() {
        if questionNumber == 13 {
            
            let alert = UIAlertController(title: "Awesome", message: "You Have Finished All The Questions, Do you Wana Start Over ?", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default) { (UIAlertAction) in
                self.startOver()
            }
            
            alert.addAction(restartAction)
            
            present(alert, animated: true, completion: nil)
            
        } else {
            questionNumber = questionNumber + 1
            updateUI()

        }

    }
    
    
    func checkAnswer() {
        if pickedAnswer == allQuestions.list[questionNumber - 1].answer {
            
            ProgressHUD.showSuccess("Correct")
            
            currentScore += 1
        } else {
            ProgressHUD.showError("Incorrect")
        }
    }
    
    
    func startOver() {
        questionNumber = 1
        currentScore = 0
        updateUI()
    }
    

    
}
