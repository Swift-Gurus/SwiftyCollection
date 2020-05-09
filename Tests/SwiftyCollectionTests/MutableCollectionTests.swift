//
//  MutableCollectionTests.swift
//  SwiftyCollection_Tests
//
//  Created by Badreddine El Jamali on 2018-06-04.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import XCTest
import SwiftyCollection

class MutableCollectionTests: XCTestCase {
    
    var arrayWithValues = [1,2,6,5,5,4,4,8,9]
    var emptyArray = [String]()
    

    
    func test_remove_last(){
        XCTAssertEqual(arrayWithValues.removeLastSafe(), 9)
        XCTAssertEqual(arrayWithValues, [1,2,6,5,5,4,4,8])
        
    }
    
    func test_remove_last_when_empty(){
        XCTAssertNil(emptyArray.removeLastSafe())
        XCTAssertEqual(emptyArray, [])
    }
    
    func test_remove_first(){
        XCTAssertEqual(arrayWithValues.removeFirstSafe(), 1)
        XCTAssertEqual(arrayWithValues, [2,6,5,5,4,4,8,9])
    }
    
    func test_remove_first_when_empty(){
        XCTAssertNil(emptyArray.removeFirstSafe())
        XCTAssertEqual(emptyArray, [])
    }
    
    func test_replace_element_when_found(){
        arrayWithValues.replaceOccurrences(of: 8, with: 9)
        XCTAssertEqual(arrayWithValues, [1,2,6,5,5,4,4,9,9])
    }
    
    func test_replace_element_when_not_found(){
        arrayWithValues.replaceOccurrences(of: 10, with: 9)
        XCTAssertEqual(arrayWithValues, [1,2,6,5,5,4,4,8,9])
    }
    
    func test_removesafe_exist_element(){
        XCTAssertEqual(arrayWithValues.removeElement(element: 8), 8)
        
        XCTAssertEqual(arrayWithValues, [1,2,6,5,5,4,4,9])
    }
    
    func test_removesafe_not_existing_element(){
        XCTAssertNil(arrayWithValues.removeElement(element: 0))
        XCTAssertEqual(arrayWithValues, [1,2,6,5,5,4,4,8,9])
    }
    
    func test_removesafe_at_existing_index(){
        XCTAssertEqual(arrayWithValues.removeElement(at: 2), 6)
        XCTAssertEqual(arrayWithValues, [1,2,5,5,4,4,8,9])
    }

    func test_removesafe_at_not_existing_index(){
        XCTAssertNil(emptyArray.removeElement(at: 15))
        XCTAssertEqual(arrayWithValues, [1,2,6,5,5,4,4,8,9])
    }
    
    func test_remove_duplicates_when_found() {
        arrayWithValues.removeDuplicates()
        XCTAssertEqual(arrayWithValues, [1,2,6,5,4,8,9])
    }
    
}
