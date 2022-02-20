//
//  PlayData.swift
//  Shakespeare's comedies
//
//  Created by Ahmed Amin on 18/02/2022.
//

import Foundation



class PlayData {
    var allWords = [String]()
    var wordCounts: [String: Int] = [:]
    
    init() {
        if let path = Bundle.main.url(forResource: "plays", withExtension: "txt") {
            if let plays = try? String(contentsOf: path) {
                allWords = plays.components(separatedBy: CharacterSet.alphanumerics.inverted)
                allWords = allWords.filter({ $0 != ""})
                
               
                for word in allWords {
                    wordCounts[word, default: 0] += 1
                   
                }
                allWords = Array(wordCounts.keys)
            }
        }
    }
}
