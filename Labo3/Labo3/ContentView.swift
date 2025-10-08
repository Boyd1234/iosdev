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
    @State var stack : Array<Int>
    @State var numbers : Array<Int>
    @State var action: Operation = .none
    @State var result : String = ""


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
                        }.calcButtonStyle()
                    }
                    GridRow{
                        Button("Clear"){
                            
                        }.calcButtonStyle()
                        Button("Enter") {
                            let combinedNumber = numbers.reduce(0) { $0 * 10 + $1 }
                            stack.append(combinedNumber)
                            numbers.removeAll()
                            result = stack.map { String($0) }.joined(separator: "\n")
                        }
                        .calcButtonStyle()

                    }.gridCellColumns(2)
                }
            }

        }
        Button("Show stack") {
            print("mimimimi")
        }
    }
}

