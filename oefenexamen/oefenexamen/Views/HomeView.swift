//
//  HomeView.swift
//  oefenexamen
//
//  Created by Boyd Bulcaen on 17/12/2025.
//

import SwiftUI

struct HomeView: View {
    @Environment(DataManager.self) var dataManager
    @Environment(PathStore.self) var pathStore
    @Binding var selectedCar : Car?
    var body: some View {
        @Bindable var pathStore = pathStore
        NavigationStack(path: $pathStore.path){
            VStack{
                HStack{
                    List(dataManager.getCars(), id:\.self, selection: $selectedCar){ car in
                        NavigationLink(value: Route.cardetail(car)){
                            VStack{
                                Text(car.brand)
                                Text(car.model)
                                Text("\(car.price)")
                            }
                        }
                        

                    }
                }
            }
            .navigationDestination(for: Route.self) { route in
                switch route {
                case .cardetail(let car):
                    CarDetailView(selectedCar: car)
                }
            }
        }
        }
}
