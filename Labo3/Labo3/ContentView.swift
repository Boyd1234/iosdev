import SwiftUI

struct ContentView: View {
    @State var calcEngine = CalcEngine()
    var body: some View {
        VStack {
            HStack{
                TextEditor(text: .constant(calcEngine.result)).frame(width: 100).frame(height: 150).padding().foregroundColor(Color.black).background(Color.black)
                Grid{
                    GridRow{
                        ForEach(7..<10){
                            number in
                            CalcBtn(label:"\(number)"){
                                calcEngine.addNumberText(number : number)
                            }
                        }
                        CalcBtn(label:"/"){
                            calcEngine.divideOperator()
                        }
                    }
                    GridRow{
                        ForEach(4..<7){
                            number in
                            CalcBtn(label:"\(number)"){
                                calcEngine.addNumberText(number : number)
                            }
                        }
                        CalcBtn(label:"*"){
                            calcEngine.multiplyOperator()
                        }
                    }
                    GridRow{
                        ForEach(1..<4){
                            number in
                            CalcBtn(label:"\(number)"){
                                //action later meegeven
                                calcEngine.addNumberText(number : number)
                            }
                        }
                        CalcBtn(label:"-"){
                            calcEngine.minusOperator()
                        }
                    }
                    GridRow{
                        CalcBtn(label:"0"){
                            calcEngine.addNumberText(number : 0)
                        }
                        Text(" ")
                        Text(" ")
                        CalcBtn(label:"+"){
                            calcEngine.addOperator()
                        }
                    }
                    GridRow{
                        CalcBtn(label:"Clear"){
                            //placeholder
                            calcEngine.clear()
                            //number += 1
                            //number kan niet worden aangepast zonder @State omdat het deel is van andere view
                        }.gridCellColumns(2)
                        CalcBtn(label:"Enter"){
                            calcEngine.addNumber()
                        }.gridCellColumns(2)
                    }
                }
            }
            Button("Show Stack"){
                calcEngine.showStack()
            }.frame(maxWidth: .infinity, alignment: .leading).colorInvert().padding()
            
            }
        .padding()
        }
    }
#Preview {
    ContentView()
}
