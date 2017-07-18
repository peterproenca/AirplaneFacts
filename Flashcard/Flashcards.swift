//
//  Flashcards.swift
//  Flashcard
//
//  Created by iD Student on 7/18/17.
//  Copyright © 2017 ID Tech. All rights reserved.
//

import Foundation


class Flashcard {
    var question : String
    var options : [String]
    var correctAnswer : String
    
    init( question : String, options : [String] ) {
        self.question = question
        self.options = options
    
        self.correctAnswer = options[0]
    }
}

class CardCollection {
    
    public static var instance : CardCollection = CardCollection()
    public private(set) var cards : [Flashcard]
    
    public private(set) var currentIndex : Int
    
    public var currentCard : Flashcard {
        get { return cards[currentIndex] }
    }
    private init(){
        
        cards = [ Flashcard(question: "What is the world's largest jumbo jet by passenger size", options: ["B747-8i", "A350-WXB", "B777-X", "A380-NEO"]),
        Flashcard(question: "What Passenger plane has the farthest range", options: ["A340-500", "B777-200LR ", "B787-9", "A380-NEO"]),
        Flashcard(question: "What is the largest double engine plane", options: ["A380-NEO", "757-300", "A350-WXB", "B787-9"]),
        Flashcard(question: "What is the largest narrow body airlinr by passenger size", options: ["B757-300", "B737-10", "A31-100", "A319-200"]),
        Flashcard(question: "What is the longest flight in the world", options: ["Dubai to San Fransisco (Emirates)", "JFK To Taipei (China Airlines)", "Auckland to Doha (Qatar Airways)", "Atlanta to Johannesburg (Delta)"]),
        Flashcard(question: "What is the world's largest jumbo jet by passenger size", options: ["B747-8i", "A350-WXB", "B777-X", "A380-NEO"]),
        Flashcard(question: "What US Airline has the largest fleet", options: ["American Airlines (AA)", "United Airlines (UA)", "Delta Airlines (DL)", "South West (WN)"])]
            currentIndex = 0;
    }
    
    public func nextQuestion() {
        currentIndex += 1
        if(currentIndex >= cards.count){
            currentIndex = 0
        }
    }
    
    public func checkAnswer(_ selectedAnswer : Int) -> Bool {
        return currentCard.options[selectedAnswer] == currentCard.correctAnswer
    }
    
}

