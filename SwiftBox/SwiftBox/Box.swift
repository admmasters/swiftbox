//
//  Box.swift
//  SwiftBox
//
//  Created by Matt Revell on 10/12/2016.
//  Copyright © 2016 Matt Revell. All rights reserved.
//

import Foundation

public struct Box<T> {
  
  let x: T
  
  init(_ x: T) {
    self.x = x
  }
  
  public func map<S>(f: (T) -> S) -> Box<S> {
    return Box<S>(f(x))
  }
  
  public func fold<S>(f: (T) -> S) -> S {
    return f(x)
  }
  
  public func inspect () -> String {
    return "Boxed: \(x)"
  }
  
}
