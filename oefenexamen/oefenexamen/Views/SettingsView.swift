//
//  SettingsView.swift
//  oefenexamen
//
//  Created by Boyd Bulcaen on 17/12/2025.
//

import SwiftUI

struct SettingsView: View {
    @Environment(DataManager.self) var dataManager
    @State private var selectedOption = "Prijs"
    let sortingOptions = ["Prijs", "Merk", "Jaar"]
    var body: some View {
        VStack {
            Picker("Sorting", selection: $selectedOption) {
                ForEach(sortingOptions, id: \.self) { option in
                    Text(option)
                }
            }
            List(dataManager.sortCars(string: selectedOption), id:\.self){ car in
                Text(car.model)
                
            }
            .pickerStyle(SegmentedPickerStyle()) // kan ook WheelPickerStyle, MenuPickerStyle, etc.
            .padding()
            
    }
}

    }
