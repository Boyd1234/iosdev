//
//  MovieDetailView.swift
//  labo6movies
//
//  Created by Boyd Bulcaen on 02/12/2025.
//

import SwiftUI

struct MovieDetailView: View {
    var movie : Movie
    var body: some View {
        VStack(alignment: .center){
            Text(movie.title)
                .font(.title)
                .foregroundColor(.red)
            Text(movie.description)
            Divider()
            Spacer()
         
            Text("Actors")
                .bold()
            List(movie.actors, id:\.self){ actor in
                NavigationLink(value: Route.actorValue(actor)){
                    VStack(alignment: .leading){
                        HStack{
                            Text(actor.firstName)
                            Text(actor.lastName)
                        }
                        .foregroundColor(.red)
                    }
                }
            }
            Divider()
            Text("Director")
            NavigationLink(movie.director.firstName, value: Route.directorValue(movie.director))
            
            
            Spacer()
            Divider()
            Text("Overview navigationStack")
                .bold()
            //TODO de navigationstack weergeven.
        }
    }
}
