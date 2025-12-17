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
                
                Text(car.model)
            }
        }
    }
}

#Preview {
    FavoritesView()
}
