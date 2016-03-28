//
//  Formatters.swift
//  Formatters
//
//  Created by Markos Charatzas on 22/03/2016.
//  Copyright © 2016 Markos Charatzas. All rights reserved.
//

import Foundation

protocol Formatted {
    func format(f: (Self) -> String) -> String
    func formatter() -> Formatter<Self>
}

struct Formatter<T> {
    let value: T
    
    func format(f: (T) -> String) -> String {
        return f(self.value)
    }
}

struct Foo: Formatted {
    
    let int: Int
    
    func format(f: (Foo) -> String) -> String {
        return f(self)
    }
    
    func formatter() -> Formatter<Foo> {
        return Formatter<Foo>(value: self)
    }
}

struct Bar: Formatted {
    
    let string: String
    
    func format(f: (Bar) -> String) -> String {
        return f(self)
    }
    
    func formatter() -> Formatter<Bar> {
        return Formatter<Bar>(value: self)
    }
}