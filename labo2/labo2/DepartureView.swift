//
//  DepartureView.swift
//  labo2
//
//  Created by Boyd Bulcaen on 30/09/2025.
//

import SwiftUI

struct DepartureView: View {
    var body: some View {
        Grid {
            GridRow{
                Text("BRU")
                    .font(.system(size: 36))
                    .bold()
                    .foregroundColor(.green)
                Text("")
                Text("BCN")
                    .font(.system(size: 36))
                    .bold()
                    .foregroundColor(.green)
                
            }
            GridRow{
                Text("Brussels")
                Image(systemName: "airplane").imageScale(.large)
                Text("Barcelona")
            }
        }
    }
}

#Preview {
    DepartureView()
}
