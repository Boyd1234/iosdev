//
//  Environment.swift
//  Test
//
//  Created by Boyd on 18/10/2025.
//

import Foundation
struct Environment {
    //TEAM
    let teamName: String
    static func getAllTeams(from wkResults: [WKResult]) -> [String]{
        let homeTeams = wkResults.map{$0.homeTeam}
        let awayTeams = wkResults.map{$0.awayTeam}
        let allTeams = homeTeams + awayTeams
        let uniqueTeams = Array(Set(allTeams)).sorted()
        return uniqueTeams
    }
    
    //STADION
    let id = UUID()
    let stadionName: String
    
    static func getAllStadions(from wkResults: [WKResult]) -> [String] {
        let stadion = wkResults.map{ $0.location}
        let uniqueStadions = Array(Set(stadion)).sorted()
        return uniqueStadions
    }
    
    //SCORESPERSTADION
    static func getAllResultsByLocation(from wkResults: [WKResult], stadion: String) -> [WKResult] {
        return wkResults.filter { $0.location == stadion }
    }


    }
    

