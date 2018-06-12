//
//  CollectionExtensionsTests.swift
//  SwiftyCollection_Tests
//
//  Created by Badreddine El Jamali on 2018-06-05.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import XCTest
import SwiftyCollection

class CollectionExtensionsTests: XCTestCase {
    
    var arrayWithValues = [1,2,6,5,5,4,4,8,9]
    
    func test_index_out_of_bounds() {
        XCTAssertFalse(arrayWithValues.indexInBounds(100))
    }
    
    func test_index_in_bounds() {
         XCTAssertTrue(arrayWithValues.indexInBounds(1))
    }
    
    func test_element_at_not_existing_index() {
        XCTAssertNil(arrayWithValues.element(at: 15))
    }
    
    
    func test_element_at_existing_index() {
        XCTAssertEqual(arrayWithValues.element(at: 2), 6)
    }

}

