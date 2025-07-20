//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Aliaksandr Zuyeu on 15.07.25.
//  Copyright © 2025 The App Brewery. All rights reserved.
//
import Foundation

struct Question {
    let text: String
    let answers: [String]
    let correctAnswer: String
    
    init(q: String, a: [String], correctAnswer: String) {
        text = q
        answers = a
        self.correctAnswer = correctAnswer
    }
}
