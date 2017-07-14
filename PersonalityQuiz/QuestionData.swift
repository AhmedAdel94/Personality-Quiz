//
//  QuestionData.swift
//  PersonalityQuiz
//
//  Created by Ahmed Adel on 6/25/17.
//  Copyright © 2017 Ahmed Adel. All rights reserved.
//

import Foundation
import UIKit



struct Question {
    var text : String
    var type : ResponseType
    var answers : [Answer]
}

enum ResponseType {
    case single,multiple,ranged
}

struct  Answer {
    var text : String
    var type: AnimalType
}


enum AnimalType : Character{
    case dog = "🐶",cat = "🐱",rabbit = "🐰",turtle = "🐢"
    
    var definition:String{
        switch self{
        case .dog:
            return "You are incredibly outgoing."
        case .cat:
            return "You enjoy doing things on your own terms"
        case .rabbit:
            return "You love everything that is soft"
        case .turtle:
            return "You are wise beyond your years"
        }
    }
}


var questions : [Question] = [
    
    Question(text: "Which food you like the most?", type: .single, answers: [
        Answer(text: "Steak", type: .dog),
        Answer(text: "Fish", type: .cat),
        Answer(text: "Carrots", type: .rabbit),
        Answer(text: "Corn", type: .turtle)
        ]),
    
    Question(text: "Which activities do you enjoy?", type: .multiple, answers: [
        Answer(text: "Swimming", type: .turtle),
        Answer(text: "Sleeping", type: .cat),
        Answer(text: "Cuddling", type: .rabbit),
        Answer(text: "Eating", type: .dog)
        ]),
    
    Question(text: "How much do you enjoy car rides?", type: .ranged, answers: [
        Answer(text: "I love them", type: .dog),
        Answer(text: "I dislike them", type: .cat),
        Answer(text: "I get a little nervous", type: .rabbit),
        Answer(text: "I barely notice them", type: .turtle)
        ]),
    
]

