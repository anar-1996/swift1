//
//  main.swift
//  4l_askerov
//
//  Created by Mac on 08.12.2020.
//
/*
 1. Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.
 2. Описать пару его наследников trunkCar и sportСar. Подумать, какими отличительными свойствами обладают эти автомобили. Описать в каждом наследнике специфичные для него свойства.
 3. Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет trunkCar, а какие – sportCar. Добавить эти действия в перечисление.
 4. В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.
 5. Создать несколько объектов каждого класса. Применить к ним различные действия.
 6. Вывести значения свойств экземпляров в консоль. */

import Foundation

enum Engineposition: String {
    case start = "Двигатель включен"
    case stop = "Двигатель выключен"
}
enum Windows: String {
    case open = "Окна открыты"
    case close = "Окна закрыты "
}
enum Transmission: String {
    case manual = "Механическая каробка"
    case auto = "Автомотическая каробка"
}
enum Radio: String {
    case on = "Радио включено"
    case off = "Радио выключено"
}
enum CargoDoor: String {
    case open = "Грузовые двери открыты"
    case close = "Грузовые двери закрыты"
}

class Car {
    let brand: String
    let yearProduction: Int
    let transmission: Transmission
    var engine: Engineposition
    var windows: Windows
    init(brand: String, year: Int, transmission: Transmission, engine: Engineposition, windows: Windows) {
        self.brand = brand
        self.yearProduction = year
        self.transmission = transmission
        self.engine = engine
        self.windows = windows
    }
    func open () {
        
    }
    func close () {
        
    }
}

class SportCar: Car {
    var radio: Radio
    init(brand: String, year: Int, transmission: Transmission, engine: Engineposition, windows: Windows, radio: Radio) {
        self.radio = radio
        super.init(brand: brand, year: year, transmission: transmission, engine: engine, windows: windows)
}
    override func open() {
        radio = .on
    }
    override func close() {
        radio = .off
    }
}

class TrunkCar: Car {
    var cargoDoor: CargoDoor
    init(brand: String, year: Int, transmission: Transmission, engine: Engineposition, windows: Windows, cargoDoor: CargoDoor) {
        self.cargoDoor = cargoDoor
        super.init(brand: brand, year: year, transmission: transmission, engine: engine, windows: windows)
    }
    override func open() {
        cargoDoor = .open
    }
    override func close() {
        cargoDoor = .close
    }
}

var sportCar1 = SportCar (brand: "Ferrari", year: 2019, transmission: .auto, engine: .stop, windows: .close, radio: .off)
sportCar1.engine = .start
sportCar1.windows = .open
sportCar1.open()
print("Спортивный автомобиль \(sportCar1.brand) \(sportCar1.yearProduction) года выпуска\n \(sportCar1.transmission.rawValue)\n \(sportCar1.engine.rawValue)\n \(sportCar1.windows.rawValue)\n \(sportCar1.radio.rawValue)")

var trunkCar1 = TrunkCar (brand: "Mercedez", year: 2016, transmission: .manual, engine: .stop, windows: .close, cargoDoor: .close)
trunkCar1.engine = .start
trunkCar1.windows = .open
trunkCar1.open()
print("Грузовой автомобиль \(trunkCar1.brand) \(trunkCar1.yearProduction) года выпуска\n \(trunkCar1.transmission.rawValue)\n \(trunkCar1.engine.rawValue)\n \(trunkCar1.windows.rawValue)\n \(trunkCar1.cargoDoor.rawValue)")
