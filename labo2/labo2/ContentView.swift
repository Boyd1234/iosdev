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
                DepartureView()
            }
            Tab("info", systemImage: "info") {
                InfoView()
            }
            
            Tab("Return", systemImage: "airplane.arrival") {
                ReturnView()
            }
        }
    }
}

#Preview {
    ContentView()
}
