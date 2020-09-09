//
//  TransactionTest.swift
//  WalletTrackerTests
//
//  Created by William Ching on 2020-09-08.
//  Copyright © 2020 William Ching. All rights reserved.
//

import XCTest
@testable import WalletTracker

class TransactionTest: XCTestCase {
    

    func testExample() throws {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testCreateTransaction() {
        // Given
        let transaction: Transaction = Transaction(amount: 10)
        
        // Then
        XCTAssertNotNil(transaction)
    }
    
    func testSetAmountValue() {
        // Given
        var transaction: Transaction = Transaction(amount: 0, category: nil)
        let value: Double = 10.0
        // When
        transaction.amount = value
        // Then
        XCTAssertEqual(transaction.amount, value)
    }
    
    func testSetCategoryValue() {
        // Given
        var transaction: Transaction = Transaction(amount: 0, category: "")
        let category: String = "Income"
        // When
        transaction.category = category
        // Then
        XCTAssertEqual(transaction.category, category)
    }

}
