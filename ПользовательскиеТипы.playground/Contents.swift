import Cocoa
//
//enum Weekday: CaseIterable {
//    case monday, tuesday, wendesday, thursday, friday, saturday, sunday
//}
//
//let weekday: Weekday = .sunday
//
//switch weekday {
//case .monday, .tuesday, .wendesday, .thursday, .friday:
////    print("Опять работа, бесит")
//case .saturday, .sunday:
////    print("Выходной")
//}
//
//for weekday in Weekday.allCases {
////    print(weekday)
//}
//
//enum MovieGenreType {
//    case action
//    case comedy
//    case drama
//    case horror
//    case fantasy
//}
//
//let firstPersonPreferences: Set<MovieGenreType> = [.action, .comedy]
//let secondPersonPreferences: Set<MovieGenreType> = [.action, .comedy, .comedy, .drama]
//
//for genre in firstPersonPreferences.intersection(secondPersonPreferences) {
////    print(genre)
//}
//
//enum Car: CaseIterable {
//    case toyoto
//    case bmw
//    case mercedes
//}
//
//for car in Car.allCases {
////    print(car)
//}

enum TransportType {
    case airline
    case train
    case car
}

func transportSite(transport: TransportType) -> String {
    
    switch transport {
    case .car:
        return "www.indriver.com"
    case .airline:
        return "www.airastana.com"
    case .train:
        return "www.bilet.railways.kz"
    }
}

print(transportSite(transport: .train))

enum ShapeType {
    case circle(Double)
    case rectangle(Double,Double)
}

func calsulateArea(area: ShapeType) -> Double {

    switch area {
    case let .circle(R):
        return 3.14 * R * R
    case let .rectangle(a, b):
        return a * b
    }
}

print(calsulateArea(area: .circle(2)))



enum ResultType {
    case success(Int)
    case failure(String)
}


func getGrade(completion: (ResultType) -> Void) {
    let isSuccess = Bool.random()
    if isSuccess == true {
        print(ResultType.success(95))
    } else {
        print(ResultType.failure("Grades not available yet, try again later"))
    }
}

let isSuccess = getGrade { a in
    print(a)
}

