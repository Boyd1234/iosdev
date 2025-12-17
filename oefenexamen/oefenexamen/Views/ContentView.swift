//
//  ContentView.swift
//  oefenexamen
//
//  Created by Boyd Bulcaen on 17/12/2025.
//

import SwiftUI

struct ContentView: View {
    @Environment(DataManager.self) var dataManager
    @State var loading = true;
    @State var selectedCar : Car? = nil
    var body: some View {
        if loading {
            ProgressView("Loading")
                .task {
                    await dataManager.loadCars()
                    loading = false;
                }
        }
        else {
            TabView{
                Tab("Home", systemImage: "heart.fill"){
                    HomeView(selectedCar: $selectedCar)
                }
                Tab("Favorites", systemImage: "heart.fill"){
                    FavoritesView()
                }
            }
        }    }
}

