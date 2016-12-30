//
//  ViewController.swift
//  Quiz
//
//  Created by Scharf, Adam on 12/28/16.
//  Copyright © 2016 Adam Scharf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let questions: [String] = [
        "What is 7+7?",
        "What is the capital of Vermont?",
        "What is cognac made from?"
    ]
    
    let answers: [String] = [
        "14",
        "Montpelier",
        "Grapes"
    ]
    
    var currentQestionsIndex: Int = 0
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQestionsIndex += 1
        if currentQestionsIndex == questions.count {
            currentQestionsIndex = 0
        }
        
        let question: String = questions[currentQestionsIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        let answer: String = answers[currentQestionsIndex]
        answerLabel.text = answer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQestionsIndex]
    }
}

