//
//  ScoreListView.swift
//  Test
//
//  Created by Boyd on 16/10/2025.
//

import SwiftUI

struct ScoreListView: View {
    let stadion: String
    @Binding var selectedMatch: String?
    var body: some View {
        List(Environment.getAllResultsByLocation(from: wkResults, stadion: stadion), id: \.self) { result in
                    Text(result)
                        .onTapGesture {
                            print("Je tapt op: \(result)")
                        }
                }
    }
}
