//
//  Search.swift
//  SwiftDataStructures
//
//  Created by Pavel Palancica on 11/30/17.
//  Copyright © 2017 I Dev Wizard. All rights reserved.
//

import Foundation

extension Array where Element: Comparable {
    
    func linearSearch(element: Element) -> Bool {
        
        for item in self {
            if (item == element) {
                return true
            }
        }
        
        return false
    }
}

class SearchTests {
    
    static func run() {
        testLinearSearch()
    }
    
    static let numbers: Array<Int> = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    
    static func testLinearSearch() {
        let contains5 = numbers.linearSearch(element: 5)
        assert(contains5 == true)
    }
}
