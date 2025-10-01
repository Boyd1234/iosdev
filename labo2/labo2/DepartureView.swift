//
//  DepartureView.swift
//  labo2
//
//  Created by Boyd Bulcaen on 30/09/2025.
//

import SwiftUI

struct DepartureView: View {
    var shortcodeDepart : String
    var shortcodeArrival : String
    var stationDepart : String
    var stationArrival : String
    var departTime : String
    var arrivalTime : String
    var flightID : String
    var gate : String
    var seat : String
    var passenger : String
    var klasse : String
    var flightDate : String
    var body: some View {
        Grid {
            GridRow{
                Text(shortcodeDepart)
                    .font(.system(size: 36))
                    .bold()
                    .foregroundColor(.green)
                Text("")
                Text(shortcodeArrival)
                    .font(.system(size: 36))
                    .bold()
                    .foregroundColor(.green)
                
            }
            GridRow{
                Text(stationDepart).foregroundColor(.gray)
                Image(systemName: "airplane").font(.system(size: 65))
                Text(stationArrival).foregroundColor(.gray)
            }
            GridRow{
                Text(departTime)
                Text("")
                Text(arrivalTime)
            }
            GridRow{
                Text("")
            }

        
            GridRow {
                VStack {
                    HStack {
                        Text("flight")
                        Spacer()
                        Text("gate")
                        Spacer()
                        Text("seat")
                    }
                    .foregroundColor(.white)
                    .font(.subheadline)

                    HStack {
                        Text(flightID).bold()
                        Spacer()
                        Text(gate).bold()
                        Spacer()
                        Text(seat).bold()
                    }
                    .foregroundColor(.white)
                    .font(.title3)
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.green)
                .cornerRadius(10)
                .gridCellColumns(3) // Laat deze GridRow over alle 3 kolommen gaan
            }

            }
        HStack{
            VStack{
                Text("Passenger").foregroundColor(.gray)
                Text(passenger)
                Text("")
                Text("Class").foregroundColor(.gray)
                Text(klasse)
                Text("")
                Text("Flight date")
                Text(flightDate)
            }
            Image(systemName: "person.crop.artframe")
                .font(.system(size: 180))
                .foregroundColor(.gray)
        }
        }
}

#Preview {
    DepartureView(shortcodeDepart: "BRU", shortcodeArrival: "BCN", stationDepart: "Brussels", stationArrival: "Barcelona", departTime: "8:15", arrivalTime: "11:15", flightID: "SN23A", gate: "B23", seat: "27A", passenger: "Dirk Hostens", klasse: "Business", flightDate: "27/08/2024")
}
