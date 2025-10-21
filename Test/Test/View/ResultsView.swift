//
//  ResultsView.swift
//  Test
//
//  Created by Boyd on 15/10/2025.
//

import SwiftUI

struct ResultsView: View {
    @Binding var selectedTeam: String?
    @State private var selectedStadion: String? = nil
    @State private var selectedMatch: WKResult? = nil

    var body: some View {
        NavigationSplitView{
            //Sidebar
            ListStationView(selectedStadion: $selectedStadion)
        } content: {
            //de content (midden)
            if let stadion = selectedStadion {
                ScoreListView(
                    stadion: stadion,
                    results: Environment.getAllResultsByLocation(from: wkResults, stadion: stadion),
                    selectedTeam: $selectedTeam,
                    selectedMatch: $selectedMatch
                )

                       } else {
                           Text("Selecteer een stadion")
                               .foregroundColor(.secondary)
                       }
        } detail: {
            //detail (rechts)
            if let match = selectedMatch {
                ScoreDetailView(match: match)
            } else {
                Text("Gelieve een match te selecteren")
                    .foregroundColor(.secondary)
            }
        }
        .navigationTitle("WKQatar2022")
    }
}

