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

struct ContentView: View {
    @State private var stack: [Any] = []
    @State private var currentInput: String = ""  // cijfers en operatoren tijdelijk hier
    @State private var result: String = ""        // display

    func appendCurrentInput() {
        if !currentInput.isEmpty {
            // Probeer om te zetten naar Double, anders is het een operator
            if let number = Double(currentInput) {
                stack.append(number)
            } else {
                stack.append(currentInput) // operator
            }
            result += "\(currentInput)\n"  // nieuwe regel
            currentInput = ""
        }
    }

    var body: some View {
        HStack(alignment: .top, spacing: 20) {
            // Links: display
            TextEditor(text: .constant(result))
                .frame(width: 150, height: 400)
                .border(Color.black)
                .disabled(true) // read-only

            // Rechts: knoppen
            VStack {
                Grid {
                    GridRow {
                        ForEach(7..<10, id: \.self) { nummer in
                            Button("\(nummer)") {
                                currentInput += "\(nummer)"
                            }.calcButtonStyle()
                        }
                        Button("/") {
                            currentInput += "/"
                        }.calcButtonStyle()
                    }

                    GridRow {
                        ForEach(4..<7, id: \.self) { nummer in
                            Button("\(nummer)") {
                                currentInput += "\(nummer)"
                            }.calcButtonStyle()
                        }
                        Button("*") {
                            currentInput += "*"
                        }.calcButtonStyle()
                    }

                    GridRow {
                        ForEach(1..<4, id: \.self) { nummer in
                            Button("\(nummer)") {
                                currentInput += "\(nummer)"
                            }.calcButtonStyle()
                        }
                        Button("-") {
                            currentInput += "-"
                        }.calcButtonStyle()
                    }

                    GridRow {
                        Button("0") {
                            currentInput += "0"
                        }.calcButtonStyle()

                        Text(" ")
                        Text(" ")

                        Button("+") {
                            currentInput += "+"
                        }.calcButtonStyle()
                    }

                    GridRow {
                        Button("Clear") {
                            currentInput = ""
                            stack.removeAll()
                            result = ""
                        }.calcButtonStyle()

                        Button("Enter") {
                            appendCurrentInput()
                        }.calcButtonStyle()
                    }.gridCellColumns(2)
                }

                Button("Show stack") {
                    let numbersOnly = stack.compactMap { $0 as? Double }
                    result += "\nStack: \(numbersOnly)"
                }.calcButtonStyle()
                .padding(.top, 10)
            }
        }
        .padding()
    }
}
