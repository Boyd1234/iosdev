//
//  DirectorDetailView.swift
//  labo6movies
//
//  Created by Boyd Bulcaen on 02/12/2025.
//

import SwiftUI

struct DirectorDetailView: View {
    var director : Director
    @Environment(MovieDataStore.self) var dataStore
    var body: some View {
        VStack(alignment: .center){
            HStack{
                Text("Director")
                Text(director.firstName + " " + director.lastName)
            }
            Divider()
            Spacer()
            Divider()
            Text("Movie(s)")
            List(dataStore.getMovies(director: director), id:\.self){ movie in
                NavigationLink(value: Route.movieValue(movie)){
                    Text(movie.title)
                        .foregroundColor(.red)
                }
            }
            
            Spacer()
            Divider()
            Text("Actors work with:")
            List(dataStore.getActors(director: director), id:\.self){ actor in
                NavigationLink(value: Route.actorValue(actor)){
                    Text(actor.firstName + " " + actor.lastName)
                        .foregroundColor(.red)
                }

            }
        }
    }
}

