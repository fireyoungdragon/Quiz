//
//  Quiz Brain.swift
//  Quizler
//
//  Created by Дмитрий Антонов on 18.03.2021.
//

import Foundation

struct QuizBrain {
    let quiz = [ // u can add here questions and answer: true - 1, false - 0
        questions(quiz: "Prince Harry is taller than Prince William", ans: 0),
        questions(quiz: "There are 7 seasons of Game Of Thrones", ans: 0),
        questions(quiz: "The sattelite of Earth is the Moon", ans: 1),
        questions(quiz: "The Great Wall of China is longer than the distance between London and Beijing", ans: 1),
        questions(quiz: "A lion's roar can be heard up to eight kilometres away", ans: 1),
        questions(quiz: "Monaco is the smallest country in the world", ans: 1),
        questions(quiz: "Cinderella was the first Disney princess", ans: 0),
        questions(quiz: "ASOS stands for As Seen On Screen", ans: 1),
        questions(quiz: "H&M stands for Hennes & Mauritz", ans: 1),
        questions(quiz: "Madonna's real name is Madonna", ans: 1),
        questions(quiz: "The star sign Aquarius is represented by a tiger", ans: 1),
        questions(quiz: "Meryl Streep has won two Academy Awards", ans: 0),
        questions(quiz: "Idina Menzel sings 'let it go' 20 times in 'Let It Go' from Frozen", ans: 0),
        questions(quiz: "Waterloo has the greatest number of tube platforms in London", ans: 1),
        questions(quiz: "M&M stands for Mars and Moordale", ans: 0),
        questions(quiz: "Gin is typically included in a Long Island Iced Tea", ans: 1),
        questions(quiz: "The unicorn is the national animal of Scotland", ans: 1),
        questions(quiz: "There are two parts of the body that can't heal themselves", ans: 0),
        questions(quiz: "Howard Donald is the oldest member of Take That", ans: 1),
        questions(quiz: "There are 219 episodes of Friends", ans: 0),
        questions(quiz: "'A' is the most common letter used in the English language", ans: 0),
        questions(quiz: "'What Do You Mean' was Justin Bieber's first UK number one single", ans: 1),
        questions(quiz: "A slug's blood is green", ans: 1),
        questions(quiz: "Google was originally called 'Backrub'", ans: 1),
        questions(quiz: "The total surface area of two human lungs is approximately 70 square metres", ans: 1)
    ]
    
    var questionNum:Int = 0
    var score: Int = 0
    
    mutating func checkAns (_ userAnswer: Int) -> Bool{
        if userAnswer == quiz[questionNum].answer{
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getScore() -> Int{
        return score
    }
    
    func getQuiz() -> String{
        return quiz[questionNum].text
    }
    
    func getProgress() -> Float{
        let progress = Float(questionNum) / Float(quiz.count)
        return progress
    }
    
    mutating func getNextQuiz(){
        if questionNum + 1 < quiz.count{
            questionNum += 1
        } else {
            questionNum = 0
            score = 0
        }
    }
}
