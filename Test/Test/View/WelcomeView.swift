//
//  WelcomeView.swift
//  Test
//
//  Created by Boyd on 15/10/2025.
//

import SwiftUI

struct WelcomeView: View {
    let teams = Team.getAllTeams(from: wkResults)
    var body: some View {
        List(teams, id: \.self){ team in
            Text(team)
        }
    }
}

#Preview {
    WelcomeView()
}
