//
//  ScoreDetailView.swift
//  Test
//
//  Created by Boyd on 18/10/2025.
//

import SwiftUI

struct ScoreDetailView: View {
    let match: WKResult
    var body: some View {
        VStack{
            Text(match.dateUTC)
            Text(match.location)
                .font(.title)
            Text("----------------------------------")
            Grid{
                
            
            GridRow{
                Text(match.homeTeam)
                Text("X")
                Text(match.awayTeam)
            }
                GridRow{
                    Text("\(match.homeTeamScore ?? 0)")
                    Text("-")
                    Text("\(match.awayTeamScore ?? 0)")
                }
            }
            
            Text("\(match.roundNumber)")
            Text(match.group!)
        }
    }
}
