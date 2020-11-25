//
//  main.swift
//  1l_AskerovAnar
//
//  Created by Mac on 25.11.2020.
//

import Foundation

//1 Решить квадратное уравнение ax^2+bx+c=0

var a:Double = 2
var b:Double = 9
var c:Double = 3
var d:Double
var x1:Double
var x2:Double

d = pow(b,2) - 4 * a * c
print("Дискриминант = \(d)")

if d >= 0 {
    x1 = (-b + sqrt(d)) / (2*a)
    x2 = (-b - sqrt(d)) / (2*a)
    print("x1= \(x1)", "x2 = \(x2)")
} else {
    print("Корней нет")
}

// 2 Прямоугольный треугольник
let r:Double = 15
let t:Double = 20
var k:Double = sqrt(pow(r,2) + pow(t,2))
var p:Double = r + t + k
var s:Double = (r * t) / 2
print("Гипотенуза треугольника = \(k)")
print("Периметр треугольника = \(p)")
print("Площадь треугольника = \(s)")

//3

var deposit:Double = 10000
var parcentage:Double = 5
parcentage = parcentage / 100
for year in 1...5 {
    deposit = deposit + (deposit * parcentage)
    print("Вклад за \(year) год = \(deposit)")
}





