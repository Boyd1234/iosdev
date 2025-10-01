//
//  ContentView.swift
//  labo2
//
//  Created by Boyd Bulcaen on 30/09/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            
            Tab("departure", systemImage: "airplane.departure") {
                DepartureView(shortcodeDepart: "BRU", shortcodeArrival: "BCN", stationDepart: "Brussels", stationArrival: "Barcelona", departTime: "8:15", arrivalTime: "11:15", flightID: "SN23A", gate: "B23", seat: "27A", passenger: "Dirk Hostens", klasse: "Business", flightDate: "27/08/2024")
            }
            Tab("info", systemImage: "info") {
                InfoView()
            }
            
            Tab("Return", systemImage: "airplane.arrival") {
                DepartureView(shortcodeDepart: "BCN", shortcodeArrival: "BRU", stationDepart: "Barcelona", stationArrival: "Brussels", departTime: "13:05", arrivalTime: "15:15", flightID: "SN205", gate: "XD-30", seat: "17C", passenger: "Dirk Hostens", klasse: "Business", flightDate: "27/08/2024")
            }
        }
    }
}

#Preview {
    ContentView()
}
