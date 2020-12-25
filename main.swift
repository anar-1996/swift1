//
//  main.swift
//  l7askerov
//
//  Created by Mac on 25.12.2020.
//

import Foundation

enum CreditCardOperationError: Error {
    case insufficientFunds (moneyNeeded: Double)
    case frozenBalance
}
struct thing {
    var price: Double
}
class CreditcardOperation {
    var balance: Double = 800.0
    var cardBlocked = false
    
    func buySomethig(thing: thing) throws {
        guard cardBlocked == false else{
            throw CreditCardOperationError.frozenBalance
        }
        
        guard thing.price <= (self.balance) else {
            if balance < 0 {
                throw CreditCardOperationError.insufficientFunds(moneyNeeded: thing.price + balance)
            } else {
                throw CreditCardOperationError.insufficientFunds(moneyNeeded: thing.price - balance)
            }
        }
        balance = self.balance - thing.price
    }

    func changeCardState(cardBlocked: Bool) {
        switch cardBlocked {
        case true:
            self.cardBlocked = true
        case false:
            self.cardBlocked = false
        }
    }
}

extension CreditCardOperationError: CustomStringConvertible {
    var description: String {
        switch self {
        case .insufficientFunds(let moneyNeeded): return "На карте недостаточно средств. Ваш баланс: \(operation.balance) руб, Необходимо: \(moneyNeeded)"
        case .frozenBalance: return "Ваша карта заблокирована."
        }
    }
}
let operation = CreditcardOperation()
do {
    try operation.buySomethig(thing: .init(price: 900.0))
} catch let error as CreditCardOperationError {
    print(error.description)
}

operation.changeCardState(cardBlocked: true)

do {
    try operation.buySomethig(thing: .init(price: 900.0))
} catch let error as CreditCardOperationError {
    print(error.description)
}
