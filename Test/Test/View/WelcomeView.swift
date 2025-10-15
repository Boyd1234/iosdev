//
//  WelcomeView.swift
//  Test
//
//  Created by Boyd on 15/10/2025.
//

import SwiftUI

struct WelcomeView: View {
    let teams = Team.getAllTeams(from: wkResults)
    @State private var selectedTeam: String? = nil
    
    var body: some View {
        NavigationView{
            List(teams, id: \.self){ team in
                Text(team)
                	
                    .foregroundColor(team == selectedTeam ? .red : .white)
                    .onTapGesture {
                        selectedTeam = team
                    }
            }
            
            if selectedTeam != nil {
                Button("NEXT"){
                    
                }
            }
        }
        .navigationTitle("Pick your favorite team")

    }
}

#Preview {
    WelcomeView()
}
