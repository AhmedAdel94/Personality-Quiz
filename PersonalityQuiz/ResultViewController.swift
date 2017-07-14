//
//  ResultViewController.swift
//  PersonalityQuiz
//
//  Created by Ahmed Adel on 6/25/17.
//  Copyright © 2017 Ahmed Adel. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var answerLabel: UILabel!
    
    var responses : [Answer]!
    @IBOutlet var definitionLabel: UILabel!
    
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "ResultSegue"{
//            let resultViewController = segue.destination as! ResultViewController
//            resultViewController.responses = answersChosen
//        }
//    }

    override func viewDidLoad() {
        super.viewDidLoad()
            calculatePersonalityResulty()
            navigationItem.hidesBackButton = true
        
            }
    
    func calculatePersonalityResulty(){
        var frequencyOfAnswers : [AnimalType:Int] = [:]
        let responseTypes = responses.map{$0.type}
        
        for response in responseTypes{
            frequencyOfAnswers[response] = (frequencyOfAnswers[response] ?? 0) + 1
        }
        
        let frequentAnswers = frequencyOfAnswers.sorted(by: { (pair1,pair2) -> Bool in
            return pair1.value > pair2.value
    })
        
        let mostCommonAnswer = frequentAnswers.sorted{ $0.1 > $1.1 }.first!.key
        
        answerLabel.text = "You are a \(mostCommonAnswer.rawValue)!"
        definitionLabel.text = mostCommonAnswer.definition
    }
    
}
