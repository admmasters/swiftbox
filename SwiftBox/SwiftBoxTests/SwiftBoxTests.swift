//
//  SwiftBoxTests.swift
//  SwiftBoxTests
//
//  Created by Matt Revell on 10/12/2016.
//  Copyright © 2016 Matt Revell. All rights reserved.
//

import XCTest
@testable import SwiftBox

class SwiftBoxTests: XCTestCase {
  
  override func setUp() {
    super.setUp()
  }
  
  override func tearDown() {
    super.tearDown()
  }
  
  func testCanMapToValue() {
    let actual = Box(1)
      .map{ $0 + 1 }
      .fold { $0 }
    
    let expected = 2
    XCTAssert(actual == expected)
  }
  
  func testCanMapToAValueOfADifferentTypes() {
    let actual = Box(1)
      .map{ $0 + 1 }
      .map(f: { x -> String in
        return "\(x) Extra"
      })
      .fold { $0 }
    
    let expected = "2 Extra"
    XCTAssert(actual == expected)
  }
  
  func testCanInspectTheBoxedValue() {
    let actual = Box(1)
      .map{ $0 + 1 }
      .inspect()
    
    let expected = "Boxed: 2"
    XCTAssert(actual == expected)
  }
  
  func testPerformanceExample() {
    // This is an example of a performance test case.
    self.measure {
      // Put the code you want to measure the time of here.
    }
  }
  
}
