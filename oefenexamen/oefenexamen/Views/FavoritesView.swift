//
//  FavoritesView.swift
//  oefenexamen
//
//  Created by Boyd Bulcaen on 17/12/2025.
//

import SwiftUI

struct FavoritesView: View {
    @Environment(DataManager.self) var dataManager
    var body: some View {
        VStack{
            List(dataManager.getFavorites(), id:\.self){ car in
                VStack{
                    Text(car.brand)
                    Text(car.color)
                    Text(car.fuelType)
                    Text(car.imageURL)
                    Text(car.model)
                    Text("\(car.price)")
                    Text("\(car.year)")
                    Button("Remove from favorites"){
                        dataManager.removeFavorite(car: car)
                    }
                }
                Divider().overlay(.brown)
            }
        }
    }
}
