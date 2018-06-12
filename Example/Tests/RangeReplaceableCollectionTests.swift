//
//  RangeReplaceableCollectionTests.swift
//  SwiftyCollection_Tests
//
//  Created by Alex Hmelevski on 2018-06-11.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import XCTest
import SwiftyCollection

class RangeReplaceableCollectionTests: XCTestCase {
    
    var arrayWithValues = [1,2,6,5,5,4,4,8,9]
    var emptyArray = [String]()
    
 
    func test_removing_last_creates_a_new_collection() {
        XCTAssertEqual(arrayWithValues.removingLast(), [1,2,6,5,5,4,4,8])
    }
    
    func test_removing_last_on_empty_collection() {
        XCTAssertEqual(emptyArray.removingLast(), [])
    }
    
    func test_removing_first_creates_a_new_collection() {
        XCTAssertEqual(arrayWithValues.removingFirst(), [2,6,5,5,4,4,8,9])
    }
    
    func test_removing_first_on_empty_collection() {
        XCTAssertEqual(emptyArray.removingFirst(), [])
    }
    
    func test_removing_element_where_when_found_creates_a_new_collection() {
        XCTAssertEqual(arrayWithValues.removingElement(where: { $0 == 5}), [1,2,6,4,4,8,9])
    }
    
    func test_removing_element_where_when_not_found() {
        XCTAssertEqual(arrayWithValues.removingElement(where: { $0 == 225}), [1,2,6,5,5,4,4,8,9])
    }
    
    
    func test_removing_element_when_found_creates_a_new_collection() {
        XCTAssertEqual(arrayWithValues.removingElement(5), [1,2,6,4,4,8,9])
    }
    
    func test_removing_element_when_not_found() {
        XCTAssertEqual(arrayWithValues.removingElement(225), [1,2,6,5,5,4,4,8,9])
    }
    
    
    func test_replacingOccurrences_when_found_with_predicate() {
         XCTAssertEqual(arrayWithValues.replacingOccurrences(with: 10, where: {$0 == 5}), [1,2,6,10,10,4,4,8,9])
    }
    
    func test_replacingOccurrences_when_not_found_with_predicate() {
        XCTAssertEqual(arrayWithValues.replacingOccurrences(with: 10, where: {$0 == 105}), [1,2,6,5,5,4,4,8,9])
    }
    
    func test_replacingOccurrences_when_found() {
        XCTAssertEqual(arrayWithValues.replacingOccurrences(of: 5, with: 10), [1,2,6,10,10,4,4,8,9])
    }
    
    func test_replacingOccurrences_when_not_found() {
        XCTAssertEqual(arrayWithValues.replacingOccurrences(of: 105, with: 105), [1,2,6,5,5,4,4,8,9])
    }
    
    func test_replacing_at_non_existing_index() {
        XCTAssertEqual(arrayWithValues.replacing(with: 10, at: 100), [1,2,6,5,5,4,4,8,9])
    }
    
    func test_replacing_at_existing_index() {
        XCTAssertEqual(arrayWithValues.replacing(with: 5, at: 1), [1,5,6,5,5,4,4,8,9])
    }
    
    func test_removing_at_existing_index() {
        XCTAssertEqual(arrayWithValues.removing(at: 1), [1,6,5,5,4,4,8,9])
    }
    
    func test_removing_at_non_existing_index() {
        XCTAssertEqual(arrayWithValues.removing(at: 105), [1,2,6,5,5,4,4,8,9])
    }
    
    
    func test_removing_duplicates() {
        XCTAssertEqual(arrayWithValues.removingDuplicates(), [1,2,6,5,4,8,9])
    }
}
