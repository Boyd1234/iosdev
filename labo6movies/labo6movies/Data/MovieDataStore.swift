//
//  MovieDataStore.swift
//  Movies
//
//  Created by Dirk Hostens on 04/12/2023.
//

import Foundation

@Observable
class MovieDataStore {
    private var movies = Movies()
    
    init(){
        
       
    }
    
    func getMovies() -> [Movie] {
        movies.movies
    }
    
    func getMovies(actor: Actor) -> [Movie] {
        movies.movies.filter { $0.actors.contains(actor)}
    }
    
    func getMovies(director: Director) -> [Movie] {
        movies.movies.filter { $0.director == director}
    }
    
    func getActors(director: Director) -> [Actor] {
        movies.movies
            .filter { $0.director == director }
            .flatMap { $0.actors }
    }
    
    private func sort() {
       
    }
    
    func loadData() async {
        //simulate async call
        do {
            print("⏳ Simulating 2-second load delay...")
            try await Task.sleep(for: .seconds(2)) // Simulate long load
            // load movies
            let data: Movies = try load("movies.json")
            movies = data //want movies is al een array
            // sort
            print("✅ Data loaded successfully.")
            
        } catch {
            print("❌ Failed to load uurrooster:", error)
            //movies is lege array
        }
    }
}
