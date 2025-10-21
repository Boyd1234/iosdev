//
//  ScoreListView.swift
//  Test
//
//  Created by Boyd on 16/10/2025.
//
import SwiftUI
struct ScoreListView: View {
    let stadion: String
    let results: [WKResult]
    @Binding var selectedTeam: String?
    @Binding var selectedMatch: WKResult?

    var body: some View {
        List(results, id: \.self, selection: $selectedMatch) { result in
            HStack {
                Text(result.homeTeam)
                    .foregroundColor(result.homeTeam == selectedTeam ? .red : .primary)
                Text(" X ")
                Text(result.awayTeam)
                    .foregroundColor(result.awayTeam == selectedTeam ? .red : .primary)
                Spacer()
                Text("\n\(result.homeTeamScore ?? 0) - \(result.awayTeamScore ?? 0)")
                    .foregroundColor(.secondary)
            }
            .padding(.vertical, 4)
            .contentShape(Rectangle())
            .onTapGesture {
                selectedMatch = result
            }
        }
    }
}

