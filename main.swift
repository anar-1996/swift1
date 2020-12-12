//
//  main.swift
//  5lAskerov
//
//  Created by Mac on 12.12.2020.
//

import Foundation



enum Engineposition: String {
    case start = "Двигатель включен"
    case stop = "Двигатель выключен"
}
enum Windows: String {
    case open = "Окна открыты"
    case close = "Окна закрыты "
}

enum Radio: String {
    case on = "Радио включено"
    case off = "Радио выключено"
}
enum CargoDoor: String {
    case open = "Грузовые двери открыты"
    case close = "Грузовые двери закрыты"
}
protocol Car {
    var brand: String { get set }
    var year: Int { get set }
    var engineposision: Engineposition { get set }
    var windows: Windows { get set }
}
extension Car {
    mutating func changeEngineposision(engineposision: Engineposition){
        self.engineposision = engineposision
        
    }
    mutating func changeWindows(windows: Windows){
        self.windows = windows
    }
}
class SportCar: Car {
    var brand: String
    var year: Int
    var engineposision: Engineposition = .stop
    var windows: Windows = .close
    var radio: Radio = .off
    init(brand: String, year: Int) {
        self.brand = brand
        self.year = year
    }
}
extension SportCar: CustomStringConvertible {
    var description: String {
        "\(brand), \(year), двигатель: \(engineposision), окна: \(windows), радио: \(radio)"
    }
}
class TrunkCar: Car {
    var brand: String
    var year: Int
    var engineposision: Engineposition = .stop
    var windows: Windows = .close
    var cargoDoor: CargoDoor = .close
    init(brand: String, year: Int) {
        self.brand = brand
        self.year = year
    }
}
extension TrunkCar: CustomStringConvertible {
    var description: String {
        "\(brand), \(year), двигатель: \(engineposision), окна: \(windows), грузовые двери: \(cargoDoor)"
        
    }
}
var sportCar1 = SportCar(brand: "Ferrari", year: 2018)
sportCar1.changeEngineposision(engineposision: .start)
sportCar1.changeWindows(windows: .open)
sportCar1.radio = .on
print(sportCar1.description)

var trunkCar1 = TrunkCar(brand: "MAN", year: 2011)
trunkCar1.changeEngineposision(engineposision: .start)
trunkCar1.changeWindows(windows: .open)
trunkCar1.cargoDoor = .open
print(trunkCar1.description)


