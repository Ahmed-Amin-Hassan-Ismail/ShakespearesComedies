//
//  PlayDataTests.swift
//  Shakespeare's comediesTests
//
//  Created by Ahmed Amin on 18/02/2022.
//

import XCTest
@testable import Shakespeare_s_comedies

class PlayDataTests: XCTestCase {
    
    var sut: PlayData!

    override func setUp() {
        super.setUp()
        sut = PlayData()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func testPlayData_AllWords_shouldBeZeroString() {
        // Given
        
        // When
        
        // Then
        XCTAssertEqual(sut.allWords.count, 18440 )
    }
    
    func testPlayData_wordsCount_areCorrect() {
        // Given
        
        // When
        
        // Then
        XCTAssertEqual(sut.wordCounts.count(for: "home"), 174)
        XCTAssertEqual(sut.wordCounts.count(for: "fun"), 4)
        XCTAssertEqual(sut.wordCounts.count(for: "mortal"), 41)
        
    }
    
    func testwordsLoadTime() {
        measure {
            _ = sut
        }
    }
    
}
