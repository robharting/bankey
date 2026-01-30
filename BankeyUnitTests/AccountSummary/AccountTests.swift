//
//  AccountTests.swift
//  BankeyUnitTests
//
//  Created by Harting, R.P.G. (Rob) on 27/01/2026.
//

import Foundation
import XCTest

@testable import Bankey

class AccountTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    func testCanParse() throws {
        let json = """
         [
           {
             "id": "1",
             "type": "Banking",
             "name": "Basic Savings",
             "amount": 929466.23,
             "createdDateTime" : "2010-06-21T15:29:32Z"
           },
           {
             "id": "2",
             "type": "CreditCard",
             "name": "No-Fee All-In Chequing"accou,
             "amount": 17562.44,
             "createdDateTime" : "2011-06-21T15:29:32Z"
           },
          ]
        """
                
        let data = json.data(using: .utf8)!
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        
        let result = try! decoder.decode([Account].self, from: data)
        
        XCTAssertEqual(result.count, 2)
        
        XCTAssertEqual(result[0].id, "1")
        XCTAssertEqual(result[0].type, .Banking)
        XCTAssertEqual(result[0].name, "Basic Savings")
        XCTAssertEqual(result[0].amount, 929466.23)
        XCTAssertEqual(result[0].createdDateTime.monthDayYearString, "Jun 21, 2010")
        
        let account2 = result[1]
        XCTAssertEqual(account2.id, "2")
        XCTAssertEqual(account2.type, AccountType.CreditCard)
        XCTAssertEqual(account2.name, "No-Fee All-In Chequing")
        XCTAssertEqual(account2.amount, 17562.44)
        XCTAssertEqual(account2.createdDateTime.monthDayYearString, "Jun 21, 2011")
    }
}
