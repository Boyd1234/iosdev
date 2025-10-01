//
//  DepartureView.swift
//  labo2
//
//  Created by Boyd Bulcaen on 30/09/2025.
//

import SwiftUI

struct FlightInfo {
    let shortcodeDepart: String
    let shortcodeArrival: String
    let stationDepart: String
    let stationArrival: String
    let departTime: String
    let arrivalTime: String
    let flightID: String
    let gate: String
    let seat: String
    let passenger: String
    let klasse: String
    let flightDate: String
}

struct DepartureView: View {
    let info : FlightInfo
    
    var body: some View {
        VStack(spacing: 20) {
            Grid {
                GridRow {
                    Text(info.shortcodeDepart)
                        .font(.system(size: 36))
                        .bold()
                        .foregroundColor(.green)
                    Spacer()
                    Text(info.shortcodeArrival)
                        .font(.system(size: 36))
                        .bold()
                        .foregroundColor(.green)
                }
                GridRow {
                    Text(info.stationDepart).foregroundColor(.gray)
                    Image(systemName: "airplane").font(.system(size: 65))
                    Text(info.stationArrival).foregroundColor(.gray)
                }
                GridRow {
                    Text(info.departTime)
                    Spacer()
                    Text(info.arrivalTime)
                }
                GridRow {
                    Spacer()
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
                            Text(info.flightID).bold()
                            Spacer()
                            Text(info.gate).bold()
                            Spacer()
                            Text(info.seat).bold()
                        }
                        .foregroundColor(.white)
                        .font(.title3)
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.green)
                    .cornerRadius(10)
                    .gridCellColumns(3)
                }
            }
            .padding()

            HStack {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Passenger").foregroundColor(.gray)
                    Text(info.passenger)
                    Text("")
                    Text("Class").foregroundColor(.gray)
                    Text(info.klasse)
                    Text("")
                    Text("Flight date")
                    Text(info.flightDate)
                }
                Spacer()
                Image(systemName: "person.crop.artframe")
                    .font(.system(size: 180))
                    .foregroundColor(.gray)
            }
            .padding()
        }
        .padding()
    }
}

#Preview {
    DepartureView(info: FlightInfo(
        shortcodeDepart: "BRU",
        shortcodeArrival: "BCN",
        stationDepart: "Brussels",
        stationArrival: "Barcelona",
        departTime: "8:15",
        arrivalTime: "11:15",
        flightID: "SN23A",
        gate: "B23",
        seat: "27A",
        passenger: "Dirk Hostens",
        klasse: "Business",
        flightDate: "27/08/2024"
    ))
}
