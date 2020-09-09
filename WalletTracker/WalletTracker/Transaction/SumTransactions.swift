//
//  SumTransactions.swift
//  WalletTracker
//
//  Created by William Ching on 2020-09-08.
//  Copyright © 2020 William Ching. All rights reserved.
//

import Foundation

protocol SumTransactions {
    func sum(transactions values: [Transaction], by category: String) -> Double
    func sum(transactions values: [Transaction]) -> Double
}

class SumTransactionsWorker: SumTransactions {
    
    func sum(transactions values: [Transaction]) -> Double {
        let map = values.map { $0.amount }
        let sum = map.reduce(0.0) { $0 + $1 }
        return sum
    }

    func sum(transactions values: [Transaction], by category: String) -> Double {
        let filter:[Transaction] = values.filter { $0.category == category }
        let map = filter.map { $0.amount }
        let sum = map.reduce(0.0) { $0 + $1 }
        return sum
    }
}
