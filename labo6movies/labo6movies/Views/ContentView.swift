//
//  ContentView.swift
//  labo6movies
//
//  Created by Boyd Bulcaen on 19/11/2025.
//

import SwiftUI

struct ContentView: View {
    @State var loading = true
    @Environment(MovieDataStore.self) private var movieStore
    @Environment(PathStore.self) private var pathStore

    var body: some View {
        @Bindable var pathStore = pathStore
        VStack {
            if loading {
                ProgressView("loading")
                    .task {
                        await movieStore.loadData()
                        loading = false
                    }
            } else {
                NavigationStack(path: $pathStore.path){
                    VStack{
                        List(movieStore.getMovies(), id: \.self){ movie in
                            NavigationLink(value: Route.movieValue(movie)){
                                VStack(alignment: .leading){
                                    Text(movie.title)
                                        .bold()
                                    Text(movie.description)
                                }
                            }
                            //dit ga je dieper in je paginas moeten steken.
//                            NavigationLink("meer ovr actor", value: Route.actorValue(movie.actors.first!))
//                            NavigationLink("meer over director", value: Route.directorValue(movie.director))
                        }.navigationDestination(for: Route.self) { route in
                            switch route {
                            case let .actorValue(actor):
                                ActorDetailView(actor: actor)
                            case let .movieValue(movie):
                                MovieDetailView(movie: movie)
                            case let .directorValue(director):
                                DirectorDetailView(director: director)
                            }
                        }
                    }
                }
                
                    
                
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
