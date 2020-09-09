//
//  SumTransactionsTest.swift
//  WalletTrackerTests
//
//  Created by William Ching on 2020-09-09.
//  Copyright © 2020 William Ching. All rights reserved.
//

import XCTest
@testable import WalletTracker

class SumTransactionsTest: XCTestCase {

    var dataSource: TransactionDataSource?
    var repository: TransactionRepository?
    
    override func setUpWithError() throws {
        dataSource = TransactionMockDataSource.shared
        repository = TransactionGateway(dataSource: dataSource!)
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testSumTransactions() {
        // Given
        let values: [Transaction]? = repository?.getAllTransactions()
        let sumWorker: SumTransactions = SumTransactionsWorker()
        guard let transactions = values else {
            return
        }
        // When
        var total: Double = sumWorker.sum(transactions: transactions)
        // Then
        XCTAssertNotNil(total)
        XCTAssertEqual(total, 10)
        
        // When
        total = sumWorker.sum(transactions: transactions, by: "Income")
        // Then
        XCTAssertNotNil(total)
        XCTAssertEqual(total, 10)
    }

}
