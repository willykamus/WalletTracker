//
//  TransactionRepository.swift
//  WalletTracker
//
//  Created by William Ching on 2020-09-09.
//  Copyright © 2020 William Ching. All rights reserved.
//

import Foundation

protocol TransactionRepository {
    func getAllTransactions() -> [Transaction]
}

protocol TransactionDataSource {
    func getAllTransactions() -> [Transaction]
}
