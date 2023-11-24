//
//  SearchingTests.swift
//  StandardAlgorithms
//
//  Created by Tomas Lopez-Valcarcel on 24/11/2023.
//

import XCTest

final class SearchingTests: XCTestCase {

    struct SearchingTestCase {
        let data: [Int]
        let expected: Int
    }


    func testLinearSearchWithArraysOfIntegersAndASearchTermReturnsPositionOfFoundTermInArrayAndReturnsNegativeOneIfNotFound() {
        //arrange
        let searching = Searching()

        let testcases = [(data: [4,7,3,6,3], searchTerm: 6, expected: 3),(data: [2,1,3,7,4], searchTerm: 6, expected: -1)]

        //act
        //assert
        for testCase in testcases {
            let actual = searching.linearSearch(testCase.data, searchTerm: testCase.searchTerm)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testBinarySearchWithArraysOfIntegersAndASearchTermReturnsPositionOfFoundTermInArrayAndReturnsNegativeOneIfNotFound() {
        //arrange
        let searching = Searching()

        let testcases = [(data: [4,7,3,6,3], searchTerm: 6, expected: 3),(data: [2,1,3,7,4], searchTerm: 6, expected: -1)]

        //act
        //assert
        for testCase in testcases {
            let actual = searching.linearSearch(testCase.data, searchTerm: testCase.searchTerm)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
}
