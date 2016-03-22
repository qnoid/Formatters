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
    
    func format(f: (T) -> String) -> String {
        return f(self.value)
    }
}

struct Foo {
    
    let int: Int
    
    func formatter() -> Formatter<Foo> {
        return Formatter<Foo>(value: self)
    }
}

struct Bar {
    
    let string: String
    
    func formatter() -> Formatter<Bar> {
        return Formatter<Bar>(value: self)
    }
}

class Formatters {

    
}