//
//  main.swift
//  1
//
//  Created by Mac on 12.12.2020.
//

import Foundation

struct Client {
    var nameClient: String
    var orderProce: Double
}
extension Client: CustomStringConvertible {
    var description: String {
        return "Клиент: \(nameClient), сумма заказа: \(orderProce)"
    }
}

struct Queue <T> {
    var elements: [T] = []
    mutating func enqueue(element: T) {
        elements.append(element)
    }
    mutating func dequeue() -> T? {
        guard !elements.isEmpty else {
            return nil
        }
        return elements.removeFirst()
    }
    var head: T? {
        return elements.first
    }
    var tail: T? {
        return elements.last
    }
    
    func filter(element: (T) -> Bool) -> [T] {
        var result = [T]()
        for i in elements {
            if element(i) {
            result.append(i)
            }
        }
        return result
    }
}
var list1 = Queue<Client>()
list1.enqueue(element: .init(nameClient: "Anar", orderProce: 10000.00))
list1.enqueue(element: .init(nameClient: "Ivan", orderProce: 40000.00))
list1.enqueue(element: .init(nameClient: "Anastasia", orderProce: 9800.00))
print(list1.elements.description)
var lis = list1.filter(element: {$0.orderProce >= 10000.00})
print(lis.description)
