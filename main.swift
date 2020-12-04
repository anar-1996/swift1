//
//  main.swift
//  3l_askerovAnar
//
//  Created by Mac on 02.12.2020.
//

import Foundation
/*
 1. Описать несколько структур – любой легковой автомобиль SportCar и любой грузовик TrunkCar.
 2. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.
 3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.
 4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.
 5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.
 6. Вывести значения свойств экземпляров в консоль. */

enum MotorStatus {
    case start, stop
}
enum WindowsStatus {
    case open, close
}
enum TrankStatus {
    case full, empty
}

struct SportCar {
    let brand: String
    let year: Int
    var trankVolume: Double {
        willSet {
            if (trankStatus == .empty) && (trankVolume > 0) && (trankVolume != 0) && (newValue < trankVolume) {
                let volume = trankVolume - newValue
                print("Свободное место в багажнике: \(volume)")
            }
        }
    }
    var motor: MotorStatus {
        willSet {
            if newValue == .start {
                print("Двигатель включен")
            } else {
                print("Двигатель не включен")
            }
        }
    }
    var windows: WindowsStatus {
        willSet {
            if newValue == .open {
                print("Окно открыто")
            } else {
                print("Окно закрыто")
            }
        }
    }
    var trankStatus: TrankStatus {
        willSet {
            if newValue == .empty {
                print("Багажник пуст")
            } else {
                print("Багадник полный")
            }
        }
    }
    var fuel: String
    mutating func changeFuell(f: String){
        switch f {
        case "diesel":
            self.fuel = "Топливо-дезель"
        case "petrol":
            self.fuel = "Топливо-бензин"
        default:
            print("Error")
        }
    }
}

var car1 = SportCar(brand: "Audi", year: 2017, trankVolume: 300, motor: .start, windows: .open, trankStatus: .empty, fuel: "disel")
print(car1.brand, car1.year)
car1.trankStatus = .empty
car1.trankVolume = 100
car1.changeFuell(f: "petrol")
car1.motor = .stop
car1.windows = .close

struct TrunkCar {
    let brand: String
    let year: Int
    var trankVolume: Double {
        willSet {
            if (trankStatus == .empty) && (trankVolume > 0) && (trankVolume != 0) && (newValue < trankVolume) {
                let volume = trankVolume - newValue
                print("Свободное место в багажнике: \(volume)")
            }
        }
    }
    var motor: MotorStatus {
        willSet {
            if newValue == .start {
                print("Двигатель включен")
            } else {
                print("Двигатель не включен")
            }
        }
    }
    var windows: WindowsStatus {
        willSet {
            if newValue == .open {
                print("Окно открыто")
            } else {
                print("Окно закрыто")
            }
        }
    }
    var trankStatus: TrankStatus {
        willSet {
            if newValue == .empty {
                print("Багажник пуст")
            } else {
                print("Багадник полный")
            }
        }
    }
    var fuel: String
    mutating func changeFuell(f: String){
        switch f {
        case "diesel":
            self.fuel = "Топливо-дезель"
        case "petrol":
            self.fuel = "Топливо-бензин"
        default:
            print("Error")
        }
    }
}
var car2 = TrunkCar(brand: "Mercedez", year: 2009, trankVolume: 13000, motor: .stop, windows: .open, trankStatus: .full, fuel: "petrol")
print(car2.brand, car2.year)
car2.trankStatus = .empty
car2.trankVolume = 9000
car2.changeFuell(f: "diesel")
car2.motor = .start
car2.windows = .close
