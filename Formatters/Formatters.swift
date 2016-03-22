//
//  Formatters.swift
//  Formatters
//
//  Created by Markos Charatzas on 22/03/2016.
//  Copyright © 2016 Markos Charatzas. All rights reserved.
//

import Foundation

struct Formatter<T> {
    let value: T
    let f: (T) -> String
    
    func format() -> String {
        return self.f(self.value)
    }
}

struct Foo {
    
    let int: Int
    
    func formatter() -> Formatter<Foo> {
        return Formatter<Foo>(value: self) { foo in
            return "\(foo.int)"
        }
    }
}

struct Bar {
    
    let string: String
    
    func formatter() -> Formatter<Bar> {
        return Formatter<Bar>(value: self) { bar in
            return bar.string
        }
    }
}

class Formatters {

    
}