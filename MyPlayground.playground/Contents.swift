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

func getUpperLowerCountCopy(string : String?) -> (hoofdletter : String, kleineletter : String, charCount : Int){
    guard string != nil else {
        throw StringConversionError.nilParamater
    }
    return (string.uppercased(), string.lowercased(), string.count)
}
