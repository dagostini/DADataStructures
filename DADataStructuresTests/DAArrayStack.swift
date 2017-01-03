//
//  DAArrayStack.swift
//  DADataStructures
//
//  Created by Dejan on 02/01/2017.
//  Copyright © 2017 Dejan. All rights reserved.
//

import Foundation

public class DAArrayStack<T> {
    private var items: [T] = []
    
    public var isEmpty: Bool {
        return items.isEmpty
    }
    
    public var size: Int {
        return items.count
    }
    
    public func push(item: T) {
        items.insert(item, at: 0)
    }
    
    public func pop() -> T? {
        return items.count > 0 ? items.removeFirst() : nil
    }
    
    public func peek() -> T? {
        return items.first
    }
}
