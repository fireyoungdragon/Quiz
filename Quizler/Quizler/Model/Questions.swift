//
//  Qustions.swift
//  Quizler
//
//  Created by Дмитрий Антонов on 15.03.2021.
//

import Foundation

struct questions {
    let text: String
    let answer: Int
    
    init(quiz: String, ans: Int) {
        text = quiz
        answer = ans
    }
}
