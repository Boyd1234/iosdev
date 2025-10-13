//
//  ContentView.swift
//  Labo3
//
//  Created by Boyd Bulcaen on 08/10/2025.
//

import SwiftUI
extension View {
    func calcButtonStyle() -> some View {
        self
            .padding(10)
            .background(Color.gray)
            .foregroundColor(.white)
            .clipShape(Capsule())
    }
}
enum Operation {
    case none
    case add, subtract, multiply, divide
}

struct ContentView: View {
    @State var stack : Array<Any>
    @State var numbers : Array<Any>
    @State var action: Operation = .none
    @State var result : String = ""

    func appendNumberIfNeeded() {
        let digits = numbers.compactMap { $0 as? Int }
        if !digits.isEmpty {        
            let combinedNumber = digits.reduce(0) { $0 * 10 + $1 }
            stack.append(combinedNumber)
            numbers.removeAll()
        }
    }


    var body: some View {
        HStack{
            TextEditor(text: .constant(result))
                .frame(width: 100, height: 150)
            VStack{
                Grid{
                    GridRow{
                        ForEach(7..<10){ nummer in
                            Button("\(nummer)"){
                                numbers.append(nummer)
                            }.calcButtonStyle()
                        }
                        Button("/"){
                            action = .divide
                            appendNumberIfNeeded()
                            stack.append("/")
                        }.calcButtonStyle()
                    }
                    GridRow{
                        ForEach(4..<7){ nummer in
                            Button("\(nummer)"){
                                numbers.append(nummer)
                            }.calcButtonStyle()
                        }
                        Button("*"){
                            action = .multiply
                            appendNumberIfNeeded()
                            stack.append("*")
                        }.calcButtonStyle()
                    }
                    GridRow{
                        ForEach(1..<4){ nummer in
                            Button("\(nummer)"){
                                numbers.append(nummer)
                            }.calcButtonStyle()
                        }
                        Button("-"){
                            action = .subtract
                            appendNumberIfNeeded()
                            stack.append("-")
                        }.calcButtonStyle()
                    }
                    GridRow{
                        Button("0"){
                            numbers.append(0)
                        }.calcButtonStyle()
                        Text(" ")
                        Text(" ")
                        Button("+"){
                            action = .add
                            appendNumberIfNeeded()
                            stack.append("+")
                        }.calcButtonStyle()
                    }
                    GridRow{
                        Button("Clear"){
                            
                        }.calcButtonStyle()
                        Button("Enter") {
                            let digits = numbers.compactMap { $0 as? Int }
                            if !digits.isEmpty {
                                let combinedNumber = digits.reduce(0) { $0 * 10 + $1 }
                                stack.append(combinedNumber)
                                numbers.removeAll()
                            }
                            // Update resultaat
                            result = stack.map { String(describing: $0) }.joined(separator: "\n")
                        }.calcButtonStyle()
 	

                    }.gridCellColumns(2)
                }
            }

        }
        Button("Show stack") {
            print("mimimimi")
        }
    }
}
