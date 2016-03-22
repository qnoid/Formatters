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
        
        XCTAssertEqual("1", foo.formatter().format  { foo in
            return "\(foo.int)"
            }
        )
    }
    
    func testBar()
    {
        let bar = Bar(string: "foo")
        
        XCTAssertEqual("foo", bar.formatter().format { bar in
            return bar.string
            }
        )
    }
}
