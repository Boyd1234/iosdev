import UIKit

var text = "swift"
let max = 10
for character in text{
    print(character)
}

let naam = (voornaam: "boyd", achternaam: "bulcaen")

print(naam.voornaam)
print(naam.achternaam)


var reversedString : String?
reversedString = "a"
if let temp = reversedString {
    print(temp)
} else {
    print("no result")
}

//----------------------------------------------------

func reversedString(zin : String?) -> String {
    if let zin = zin {
        
        var returnzin = ""
        let reversedzin = zin.reversed()
        for character in reversedzin{
            returnzin.append(character)
        }
        return returnzin
    } else {
        return ""
    }
}
    
    print(reversedString(zin: nil))
    
    
    func getUpperLowerCount(string : String) -> (hoofdletter : String, kleineletter : String, charCount : Int){
        return (string.uppercased(), string.lowercased(), string.count)
    }
    
    var result = getUpperLowerCount(string: "IOS 26")
    print(result.hoofdletter)
    print(result.kleineletter)
    print(result.charCount)
    print(result)
    
func divide(num1 : Int, num2 : Int) -> Double {
    let nummer1 = Double(num1)
    let nummer2 = Double(num2)
    return nummer1/nummer2
}

print(divide(num1: 6, num2: 0))


func calculate(nummers : Double...) -> Double {
    var totaal = 0.0
    for elem in nummers{
        totaal += elem
    }
    return totaal/Double(nummers.count)
}

print(calculate(nummers: 3, 4, 6, 8.0, -1.3))
print(calculate())


var x = 10.0
var y = 3

func increment(a : inout Double, b : inout Int){
    a += 1
    b += 1
}

increment(a: &x, b: &y)
print(x)
print(y)

//------------------------------------------------------------------

enum StringConversionError: Error {
    case nilParameter
    case emptyParameter
}

func getUpperLowerCountCopy(string: String?) throws -> (hoofdletter: String, kleineletter: String, charCount: Int) {
    guard let str = string else {
        throw StringConversionError.nilParameter
    }
    guard !str.isEmpty else {
        throw StringConversionError.emptyParameter
    }
    return (str.uppercased(), str.lowercased(), str.count)
}

// Testcases met exception handling
do {
    let result = try getUpperLowerCountCopy(string: "iOS 26")
    print("Upper: \(result.hoofdletter), Lower: \(result.kleineletter), Count: \(result.charCount)")
} catch StringConversionError.nilParameter {
    print("Nil value parameter not allowed")
} catch StringConversionError.emptyParameter {
    print("Empty String parameter not allowed")
}

// Nil test
do {
    let _ = try getUpperLowerCountCopy(string: nil)
} catch StringConversionError.nilParameter {
    print("Nil value parameter not allowed")
} catch StringConversionError.emptyParameter {
    print("Empty String parameter not allowed")
}

// Empty string test
do {
    let _ = try getUpperLowerCountCopy(string: "")
} catch StringConversionError.nilParameter {
    print("Nil value parameter not allowed")
} catch StringConversionError.emptyParameter {
    print("Empty String parameter not allowed")
}

//-------------------------------------------------

enum IphoneType: String {
    case iPhoneAir
    case iPhone17Pro
    case iPhone17ProMax
    case iPhone17
}

struct Iphone {
    static let supplier = "Apple"
    
    var type: IphoneType?        // Optional enum
    var dimension: Dimension
    
    struct Dimension {
        var height: Double
        var width: Double
    }
    
    // Empty constructor
    init() {
        self.type = nil
        self.dimension = Dimension(height: 0.0, width: 0.0)
    }
    
    // Constructor met parameters
    init(type: IphoneType, height: Double, width: Double) {
        self.type = type
        self.dimension = Dimension(height: height, width: width)
    }
    
    // Computed property
    var description: String {
        guard let type = type else {
            return "Geen iPhone type gespecificeerd"
        }
        
        switch type {
        case .iPhoneAir:
            return "Dit is een iPhone Air"
        case .iPhone17Pro:
            return "Dit is een iPhone 17 Pro"
        case .iPhone17ProMax:
            return "Dit is een iPhone 17 Pro Max"
        case .iPhone17:
            return "Dit is een iPhone 17"
        }
    }
}

// Objecten aanmaken
let iPhoneAir = Iphone()  
let iPhoneAir2 = Iphone(type: .iPhoneAir, height: 15.62, width: 7.47)

// Testen
print(Iphone.supplier)             // Apple
print(iPhoneAir.description)       // Geen iPhone type gespecificeerd
print(iPhoneAir2.description)      // Dit is een iPhone Air
print(iPhoneAir2.dimension)        // Dimension(height: 15.62, width: 7.47)

//--------------------------------------------------

let names = ["Dirk", "Els", "Marc", "Eline", "Dominiek"]

let dNamen = namen.filter { $0.hasPrefix("D") }

// Definieer een functie die checkt of een naam met "D" begint
func filterArr(_ name: String) -> Bool {
    return name.hasPrefix("D")
}

// Gebruik de functie met filter
var filtered2 = names.filter(filterArr)

print(dNames)
// Output: ["Dirk", "Dominiek"]


func filterArrayExtended(letter: String) -> (String) -> Bool {
    return { name in
        name.hasPrefix(letter)
    }
}

// Voorbeeld van filteren: alle namen die beginnen met "E"
let filtered3 = arr.filter(filterArrayExtended(letter: "E"))
print(filtered3)  // Output: ["Els", "Eline"]
let filteredM = arr.filter(filterArrayExtended(letter: "M"))
print(filteredM)  // Output: ["Marc"]

// Map closure om alle elementen in hoofdletters te zetten
let uppercasedNames = names.map { $0.uppercased() }

print(uppercasedNames)
// Output: ["DIRK", "ELS", "MARC", "ELINE", "DOMINIEK"]

// Map closure om lengte van elke string te krijgen
let lengths = names.map { $0.count }

// Sorteer de lengtes van laag naar hoog
let sortedLengths = lengths.sorted()

print(sortedLengths)
// Output: [3, 4, 4, 5, 8]
