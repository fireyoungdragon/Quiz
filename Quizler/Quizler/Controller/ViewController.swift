//
//  ViewController.swift
//  Quizler
//
//  Created by Дмитрий Антонов on 14.03.2021.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabel()
    }
    
    
    
    
    
    @IBAction func answerButton(_ sender: UIButton) {
        
        let userAnswer = sender.tag //true - 1, false - 0
        let userGotIt = quizBrain.checkAns(userAnswer)
        
        if userGotIt{
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.getNextQuiz()
        
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateLabel), userInfo: nil, repeats: false)
        
    }
    
    @objc func updateLabel(){
        questionLabel.text = quizBrain.getQuiz()
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = ("Score: \(quizBrain.getScore())")
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        
    }
    
    
    
}

