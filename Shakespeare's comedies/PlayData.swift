//
//  PlayData.swift
//  Shakespeare's comedies
//
//  Created by Ahmed Amin on 18/02/2022.
//

import Foundation



class PlayData {
    var allWords = [String]()
    
    init() {
        if let path = Bundle.main.url(forResource: "plays", withExtension: "txt") {
            if let plays = try? String(contentsOf: path) {
                allWords = plays.components(separatedBy: CharacterSet.alphanumerics.inverted)
                allWords = allWords.filter({ $0 != ""})
                print(allWords.count)
            }
        }
    }
}
