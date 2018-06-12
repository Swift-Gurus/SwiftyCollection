//
//  CollectionExtensions.swift
//  Pods
//
//  Created by Badreddine El Jamali on 2018-06-04.
//

import Foundation


public extension Collection {
    public func element(at index: Index) -> Element? {
        if indexInBounds(index) {
            return self[index]
        }
        
        return nil
    }
    
    public func indexInBounds(_ index: Index) -> Bool {
        return index < endIndex && index >= startIndex
    }
}
