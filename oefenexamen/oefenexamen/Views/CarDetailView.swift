//
//  CarDetailView.swift
//  oefenexamen
//
//  Created by Boyd Bulcaen on 17/12/2025.
//

import SwiftUI

struct CarDetailView: View {
    @Environment(DataManager.self) var dataManager
    @State var isFavorited : Bool = false;
    @State var filter : Bool = false
    var selectedCar : Car
    var body: some View {
        Group{
            if filter {
                FilterView()
            } else {
                VStack{
                    Text(selectedCar.brand)
                    Text(selectedCar.color)
                    Text(selectedCar.fuelType)
                    Text(selectedCar.imageURL)
                    Text(selectedCar.model)
                    Text("\(selectedCar.price)")
                    Text("\(selectedCar.year)")
                    Toggle("Favorite car", isOn: $isFavorited)
                        .onChange(of: isFavorited) { newValue in
                            if newValue {
                                dataManager.addFavorite(car: selectedCar)
                            }}
                    Button("filter tonen"){
                        filter = true
                    }
                    
                }
            }
            
        }

    }
}
