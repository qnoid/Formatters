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
    
    func testFormat()
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
    
    func testFormatter()
    {
        let fooFormatter = Foo(int: 1).formatter()
        
        XCTAssertEqual("1", fooFormatter.format { foo in
            return "\(foo.int)"
            }
        )
        
        let barFormatter = Bar(string: "foo").formatter()
        XCTAssertEqual("foo", barFormatter.format { bar in
            return bar.string
            }
        )
    }
    
    func format<T: Formatted>(formatted: T, f: (T) -> String) -> String {
        return formatted.format(f)
    }
    
    func testFormatters()
    {
        let fooFormatter = Foo(int: 1).formatter()
        let barFormatter = Bar(string: "foo").formatter()

        XCTAssertEqual("1", format(fooFormatter,  f: { foo in
            return "\(foo.int)"
            }
        ))
        
        XCTAssertEqual("foo", format(barFormatter, f: { bar in
            return bar.string
            }
        ))
    }
    
    func format<T>(formatter: Formatter<T>, f: (T) -> String) -> String {
        return formatter.format(f)
    }

}
