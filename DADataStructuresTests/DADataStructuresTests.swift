//
//  DADataStructuresTests.swift
//  DADataStructuresTests
//
//  Created by Dejan on 02/01/2017.
//  Copyright © 2017 Dejan. All rights reserved.
//

import XCTest
@testable import DADataStructures

private struct Constants {
    static let MaxItems = 100_000
}

class DADataStructuresTests: XCTestCase {
    
    func testStack() {
        let stopwatch = Stopwatch()
        let stack = DAStack<Int>()
        for i in 0..<Constants.MaxItems {
            stack.push(item: i)
        }
        print("Stack")
        stopwatch.printElapsedTime()
    }
    
    func testArrayStack() {
        let stopwatch = Stopwatch()
        let stack = DAArrayStack<Int>()
        for i in 0..<Constants.MaxItems {
            stack.push(item: i)
        }
        print("Array Stack")
        stopwatch.printElapsedTime()
    }
}

private class Stopwatch {
    private var date = Date()
    var elapsedTime: TimeInterval {
        return NSDate().timeIntervalSince(date)
    }
    
    func printElapsedTime() {
        print("Elapsed Time (seconds): ", elapsedTime)
    }
}
