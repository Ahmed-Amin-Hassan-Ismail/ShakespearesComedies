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
        XCTAssertEqual(sut.allWords.count, 384001 )
    }
    
}
