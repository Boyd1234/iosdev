//
//  FilterView.swift
//  oefenexamen
//
//  Created by Boyd Bulcaen on 17/12/2025.
//

import SwiftUI
struct FilterView: View {
    @Environment(DataManager.self) var dataManager
    @State private var selectedFuel = "Alles"
    let fuelTypes = ["Benzine", "Elektrisch", "Alles"]
    var body: some View {
        VStack {
            Picker("Brandstof", selection: $selectedFuel) {
                ForEach(fuelTypes, id: \.self) { fuel in
                    Text(fuel)
                }
            }
            .pickerStyle(SegmentedPickerStyle()) // kan ook WheelPickerStyle, MenuPickerStyle, etc.
            .padding()
            
            if(selectedFuel == "Benzine"){
                List(dataManager.getBenzineCars(), id: \.self){ car in
                    VStack{
                        Text(car.model)
                    }
                }
            } else if(selectedFuel == "Elektrisch"){
                List(dataManager.getElektrischeCars(), id: \.self){ car in
                    VStack{
                        Text(car.model)
                    }
                }
            } else {
                List(dataManager.getCars(), id:\.self){ car in
                    VStack{
                        Text(car.model)
                    }}
            }
        }
    }
}
