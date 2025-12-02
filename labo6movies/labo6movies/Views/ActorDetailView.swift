//
//  ActorDetailView.swift
//  labo6movies
//
//  Created by Boyd Bulcaen on 02/12/2025.
//

import SwiftUI

struct ActorDetailView: View {
    var actor : Actor
    @Environment(MovieDataStore.self) var movieStore

    var body: some View {
        VStack(alignment: .center){
            HStack{
                Text("Actor:")
                Text(actor.firstName + " " + actor.lastName)
            }
            Divider()
            HStack{
                Text("Birthday:")
                Text(actor.birthday)
            }
            
            Spacer()
            Divider()
            Text("Movie(s)")
                .bold()
            List(movieStore.getMovies(actor: actor), id:\.self){ movie in
                NavigationLink(value: Route.movieValue(movie)){
                    Text(movie.title)
                        .foregroundColor(.red)
                }
            }
            
            NavigationStackView()
        }
    }
}

