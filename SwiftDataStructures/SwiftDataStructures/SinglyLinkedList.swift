//
//  SinglyLinkedList.swift
//  SwiftDataStructures
//
//  Created by Pavel Palancica on 12/2/17.
//  Copyright © 2017 I Dev Wizard. All rights reserved.
//

import Foundation

class SinglyLinkedList<T: Equatable>
{
    class ListNode<T>
    {
        var data: T?
        var next: ListNode<T>?
    }
    
    var head: ListNode<T>?
    
    func append(element: T)
    {
        let newNode = ListNode<T>()
        newNode.data = element
        
        if let head = head
        {
            var current: ListNode<T> = head
            
            while current.next != nil
            {
                current = current.next!
            }
            
            current.next = newNode
        }
        else
        {
            head = newNode
        }
    }
    
    var count: Int
    {
        var current = head
        var result = 0
        
        while current != nil
        {
            result = result + 1
            current = current?.next
        }
        
        return result
    }
    
    func printElements()
    {
        var current = head
        
        while current != nil
        {
            if let data = current!.data
            {
                print("\(data)")
            }
        
            current = current?.next
        }
    }
}

class SinglyLinkedListTests
{
    static func run()
    {
        testAppend()
    }
    
    static func testAppend()
    {
        let list = SinglyLinkedList<Int>()
        
        list.append(element: 5)
        assert(list.count == 1)
        
        list.append(element: 10)
        assert(list.count == 2)
        
        list.append(element: 30)
        assert(list.count == 3)
    }
}
