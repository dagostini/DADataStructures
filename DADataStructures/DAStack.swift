//
//  DAStack.swift
//  DADataStructures
//
//  Created by Dejan on 02/01/2017.
//  Copyright © 2017 Dejan. All rights reserved.
//

import Foundation

private class Node<T> {
    var item: T
    var next: Node?
    
    init(withItem item: T) {
        self.item = item
    }
}

public class DAStack<T> {
    private var head: Node<T>?
    private var count: Int = 0
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    public var size: Int {
        return count
    }
    
    public func push(item: T) {
        let oldHead = head
        head = Node(withItem: item)
        head?.next = oldHead
        count += 1
    }
    
    public func pop() -> T? {
        let item = head?.item
        head = head?.next
        count -= 1
        return item
    }
    
    public func peek() -> T? {
        return head?.item
    }
}
