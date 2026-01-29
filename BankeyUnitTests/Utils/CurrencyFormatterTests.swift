//
//  CurrencyFormatterTests.swift
//  BankeyUnitTests
//
//  Created by Harting, R.P.G. (Rob) on 05/12/2025.
//

import Foundation
import XCTest

@testable import Bankey  // allow to access all files in project

class Test: XCTestCase {
    var formatter: CurrencyFormatter!

    
    override func setUp() {  // get called once per test
        super.setUp()
        formatter = CurrencyFormatter()
    }
    
    // Make sure the Simulator is at US / en_US
    func testBreakDollarsIntoCents() throws {
        let result = formatter.breakIntoDollarsAndCents(929466.23)
        //XCTAssertEqual(result.0, " 929.466")
        XCTAssertEqual(result.1, "23")
    }
    
    func testDollarsFormatted() throws {
        let locale = Locale.current
        let currencySymbol = locale.currencySymbol!
        
        let result = formatter.dollarsFormatted(929466.23)
     
        //        XCTAssertEqual(result, "\(currencySymbol) 929.466,23")
        XCTAssertTrue(result.contains("\(currencySymbol)"))
        XCTAssertTrue(result.contains("929"))
    }
    
    func testZeroDollarsFormatted() throws {
        let locale = Locale.current
        let currencySymbol = locale.currencySymbol!
        let result = formatter.dollarsFormatted(0)
        // TODO fix this test to work in all locales
//        XCTAssertEqual(result, "\(currencySymbol) 0,00")
        XCTAssertTrue(result.contains("0,00"))
    }
        
}
