//
//  Search.swift
//  SwiftDataStructures
//
//  Created by Pavel Palancica on 11/30/17.
//  Copyright © 2017 I Dev Wizard. All rights reserved.
//

import Foundation

extension Array where Element: Comparable {
    
    func linearSearch(element: Element) -> Bool
    {
        for item in self
        {
            if item == element
            {
                return true
            }
        }
        
        return false
    }
    
    func indexOfFirstOccurenceOf(element: Element) -> Int
    {
        for i in 0..<self.count
        {
            if self[i] == element
            {
                return i
            }
        }
        
        return -1
    }
}

class SearchTests
{
    static func run()
    {
        testLinearSearch()
        testIndexOfFirstOccurenceOf()
    }
    
    static var numbers: Array<Int>!
    
    static func testLinearSearch()
    {
        numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        
        let contains5 = numbers.linearSearch(element: 5)
        assert(contains5 == true)
        
        let contains20 = numbers.linearSearch(element: 20)
        assert(contains20 == false)
    }
    
    static func testIndexOfFirstOccurenceOf()
    {
        numbers = [1, 2, 3, 1, 2, 3]
        
        let firstIndexOf3 = numbers.indexOfFirstOccurenceOf(element: 3)
        assert(firstIndexOf3 == 2)
        
        let firstIndexOf10 = numbers.indexOfFirstOccurenceOf(element: 10)
        assert(firstIndexOf10 == -1)
    }
}
