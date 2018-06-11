//
//  CollectionExtensions.swift
//  Pods
//
//  Created by Badreddine El Jamali on 2018-06-04.
//

import Foundation

public extension Collection {
    func element(at index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}

public extension Collection where Element: Equatable {
    public func removedDuplicates() -> [Element]  {
        return reduce([], { (partial, element) -> [Element] in
            return !partial.contains(element) ? partial + [element] : partial
        })
    }
}

