//
//  FormattersTests.swift
//  FormattersTests
//
//  Created by Markos Charatzas on 22/03/2016.
//  Copyright © 2016 Markos Charatzas. All rights reserved.
//

import XCTest
@testable import Formatters

class FormattersTests: XCTestCase {
    

    func testFoo()
    {
        let foo = Foo(int: 1)
        
        XCTAssertEqual("1", foo.format  { foo in
            return "\(foo.int)"
            }
        )
    }
    
    func testBar()
    {
        let bar = Bar(string: "foo")
        
        XCTAssertEqual("foo", bar.format { bar in
            return bar.string
            }
        )
    }
    
    func testBoth()
    {
        XCTAssertEqual("1", Foo(int: 1).format  { foo in
            return "\(foo.int)"
            }
        )
        
        XCTAssertEqual("foo", Bar(string: "foo").format  { bar in
            return bar.string
            }
        )
    }
    
    func testFormatted()
    {
        XCTAssertEqual("1", format(Foo(int: 1),  f: { foo in
            return "\(foo.int)"
            }
        ))

        XCTAssertEqual("foo", format(Bar(string: "foo"), f: { bar in
            return bar.string
            }
        ))
    }
    
    func format<T: Formatted>(formatted: T, f: (T.F) -> String) -> String {
        return formatted.format(f)
    }
}
