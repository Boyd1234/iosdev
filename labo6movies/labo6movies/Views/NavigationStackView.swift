//
//  NavigationStackView.swift
//  labo6movies
//
//  Created by Boyd Bulcaen on 02/12/2025.
//

import SwiftUI

struct NavigationStackView: View {
    @Environment(PathStore.self) var pathStore

    var body: some View {
        VStack {
            Spacer()
            Divider()

            Text("Overview navigationStack")
                .bold()

            // Toon elk element mooi
            ForEach(Array(pathStore.path.enumerated()), id: \.offset) { index, route in
                Text(displayText(for: route))
                //je kan ook je switch case hier in smijten.
            }

            Button("clear") {
                pathStore.path = []
            }
        }
    }

    // Hier bepaal je wat je toont per route-type
    func displayText(for route: Route) -> String {
        switch route {
        case .movieValue(let movie):
            return "movie \(movie.title)"
        case .actorValue(let actor):
            return "actor \(actor.firstName + " " + actor.lastName)"
        case .directorValue(let director):
            return "director \(director.firstName + " " + director.lastName)"
        }
    }
}
