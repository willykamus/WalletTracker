//
//  TransactionGateway.swift
//  WalletTracker
//
//  Created by William Ching on 2020-09-09.
//  Copyright © 2020 William Ching. All rights reserved.
//

import Foundation

class TransactionGateway: TransactionRepository {
    
    var dataSource: TransactionDataSource
    
    init(dataSource: TransactionDataSource) {
        self.dataSource = dataSource
    }
    
    func getAllTransactions() -> [Transaction] {
        return dataSource.getAllTransactions()
    }
    
    
}

class TransactionMockDataSource: TransactionDataSource {
    
    static let shared: TransactionDataSource = TransactionMockDataSource()
    
    var transactions: [Transaction] = [Transaction(amount: 1, category: "Income"),
                                       Transaction(amount: 2, category: "Income"),
                                       Transaction(amount: 3, category: "Income"),
                                       Transaction(amount: 4, category: "Income")]
    
    private init () { }
    
    func getAllTransactions() -> [Transaction] {
        return self.transactions
    }
    
    
}
