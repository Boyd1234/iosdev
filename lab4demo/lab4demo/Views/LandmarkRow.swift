//
//  LandmarkRow.swift
//  lab4demo
//
//  Created by Boyd Bulcaen on 15/10/2025.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack{
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            
            Spacer()
        }
    }
}

#Preview{
    //komt van in je loadfunctie waar je var landmarks hebt.
    Group{
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
}

