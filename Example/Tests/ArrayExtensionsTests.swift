//
//  ArrayExtensionsTests.swift
//  SwiftyCollection_Tests
//
//  Created by Badreddine El Jamali on 2018-06-04.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import XCTest
import SwiftyCollection

class ArrayExtensionsTests: XCTestCase {
    
    var arrayWithValues = [1,2,6,5,5,4,4,8,9]
    var emptyArray = [String]()
    
    func test_remove_last(){
        arrayWithValues.removeLastSafe()
        XCTAssertEqual(arrayWithValues, [1,2,6,5,5,4,4,8])
    }
    
    func test_remove_last_when_empty(){
        emptyArray.removeLastSafe()
        XCTAssertEqual(emptyArray, [])
    }
    
    func test_remove_first(){
        arrayWithValues.removeFirstSafely()
        XCTAssertEqual(arrayWithValues, [2,6,5,5,4,4,8,9])
    }
    
    func test_remove_first_when_empty(){
        emptyArray.removeFirstSafely()
        XCTAssertEqual(emptyArray, [])
    }
    
    func test_replace_element(){
        let array = arrayWithValues.replaceElement(replacedElement: 8)
        XCTAssertEqual(array, [1,2,6,5,5,4,4,9])
    }
    
    func test_removesafe_exist_element(){
        let _ = arrayWithValues.removeElementSafe(element: 8)
        XCTAssertEqual(arrayWithValues, [1,2,6,5,5,4,4,9])
    }
    
    func test_removesafe_not_existing_element(){
        let _ = arrayWithValues.removeElementSafe(element: 0)
        XCTAssertEqual(arrayWithValues, [1,2,6,5,5,4,4,8,9])
    }
    
    func test_removesafe_at_existing_index(){
        arrayWithValues.removeSafe(at: 2)
        XCTAssertEqual(arrayWithValues, [1,2,5,5,4,4,8,9])
    }
    
    func test_removesafe_at_not_existing_index(){
        arrayWithValues.removeSafe(at: 15)
        XCTAssertEqual(arrayWithValues, [1,2,6,5,5,4,4,8,9])
    }
    
    func test_unify_array(){
        arrayWithValues.unify()
        XCTAssertEqual(arrayWithValues, [1,2,6,5,4,8,9])
    }

}
