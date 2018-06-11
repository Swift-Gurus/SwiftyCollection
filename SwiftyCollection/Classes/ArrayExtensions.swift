//
//  ArrayExtensions.swift
//  Pods
//
//  Created by Badreddine El Jamali on 2018-06-04.
//

import Foundation

public extension Array {
    
    public mutating func removeLastSafe() {
        guard let _ = last else { return }
        removeLast()
    }
    
    @discardableResult
    public mutating func removeFirstSafely() -> Element? {
        guard let _ = last else { return nil }
        return removeFirst()
    }
    
    @discardableResult
    public mutating func removeElementSafe(where condition: (Element) ->Bool) -> Element?  {
        var removedElement: Element?
        self = reduce([], { (part, currentElement) -> [Element] in
            if condition(currentElement){
                removedElement = currentElement
                return part
            } else {
                return part + [currentElement]
            }
        })
        return removedElement
    }
    
    public func replaceElement(replacedElement element: Element,
                         where condition: (Element) -> Bool) -> Array {
        return !contains(where: condition) ? self + [element] : removeElement(where: condition)
    }
    
    public func removeElement(where condition: (Element) -> Bool) -> Array {
        return reduce([], { (partial, element) -> Array in
            return condition(element) ? partial : partial + [element]
        })
    }
}

public extension Array where Element: Equatable {
    
    public mutating func removeSafe(at index: Index) {
        let element = self.element(at: index)
        self.removeElementSafe(where: {$0 == element})
    }
    
    public mutating func removeElementSafe(element: Element) -> Element? {
        return self.removeElementSafe(where: {$0 == element})
    }
    
    public func replaceElement(replacedElement element: Element) -> Array {
        return !contains(element) ? self + [element] : removeElement(where: {$0 == element})
    }
    
}

public extension Array where Element: Hashable {
    
    public mutating func unify() {
        self = removedDuplicates()
    }
    
}
