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
    
    func test_element_at_existing_index(){
        let element = arrayWithValues.element(at: 6)
        XCTAssertEqual(element, 4)
    }
    
    func test_element_at_not_existing_index(){
        let element = arrayWithValues.element(at: 15)
        XCTAssertEqual(element, nil)
    }
    
    func test_unify_array(){
        let unifiedArray = arrayWithValues.removedDuplicates()
        XCTAssertEqual(unifiedArray, [1,2,6,5,4,8,9])
    }
    
}

