//
//  WelcomeView.swift
//  Test
//
//  Created by Boyd on 15/10/2025.
//
import SwiftUI

struct WelcomeView: View {
    let teams = Environment.getAllTeams(from: wkResults)
    @State private var selectedTeam: String? = nil
    
    
    var body: some View {
        NavigationStack {
            VStack {
                List(teams, id: \.self, selection: $selectedTeam) { team in
                    Text(team)
                        .foregroundColor(team == selectedTeam ? .red : .primary)
                }

                if let selectedTeam = selectedTeam {
                    NavigationLink(
                        destination: ResultsView(selectedTeam: $selectedTeam)
                    ) {
                        Text("NEXT")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .padding()
                    }
                }
            }
            .navigationTitle("Pick your favorite team")
        }
    }
}

#Preview {
    WelcomeView()
}
