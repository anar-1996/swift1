//
//  main.swift
//  test
//
//  Created by Mac on 27.11.2020.
//

import Foundation
//1 Задание

var arrr = Array(1...100) //<- 3 Задание
func ever (i:Int) -> Bool {
    return i % 2 == 0
}
func odd (i:Int) -> Bool {
    return i % 2 != 0
}
    
print("Четные числа \(arrr.filter(ever))")
print("Нечетные числа \(arrr.filter(odd))")
 
// 2 Задание

func aa (i:Int) -> Bool {
    return i % 3 == 0
}
func bb (i:Int) -> Bool {
    return i % 3 != 0
}
print("Делятся на 3 \(arrr.filter(aa))")
print("Не делятся на 3 \(arrr.filter(bb))")

// 4 Задание

var delite = arrr.filter {$0 % 2 != 0 && $0 % 3 == 0}
print("Нечетные числа которые делятся на 3 \(delite)")


