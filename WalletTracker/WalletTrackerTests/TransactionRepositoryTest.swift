//
//  TransactionRepositoryTest.swift
//  WalletTrackerTests
//
//  Created by William Ching on 2020-09-09.
//  Copyright © 2020 William Ching. All rights reserved.
//

import XCTest
@testable import WalletTracker

class TransactionRepositoryTest: XCTestCase {

    var dataSource: TransactionDataSource?

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        dataSource = TransactionMockDataSource.shared
        
        
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
    
    func testTransactionGateway() {
        // Given
        let repository: TransactionRepository = TransactionGateway(dataSource: dataSource!)
        // When
        let transactions: [Transaction] = repository.getAllTransactions()
        // Then
        XCTAssertNotNil(transactions)
    }

}
