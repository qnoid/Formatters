//
//  Formatters.swift
//  Formatters
//
//  Created by Markos Charatzas on 22/03/2016.
//  Copyright © 2016 Markos Charatzas. All rights reserved.
//

import Foundation

protocol Formatted {
    typealias F
    
    func format(f: (F) -> String) -> String
}

struct Formatter<T> {
    let value: T
    
    func format(f: (T) -> String) -> String {
        return f(self.value)
    }
}

struct Foo: Formatted {
    typealias F = Foo
    
    let int: Int
    
    func format(f: (Foo) -> String) -> String {
        return f(self)
    }
}

struct Bar: Formatted {
    typealias F = Bar
    
    let string: String
    
    func format(f: (Bar) -> String) -> String {
        return f(self)
    }
}


class Formatters {

}