//
//  Team.swift
//  Test
//
//  Created by Boyd on 15/10/2025.
//

import Foundation

struct Team: Identifiable{
    let id = UUID()
    let name: String
    let group: String?
    
    static func getAllTeams(from wkResults: [WKResult]) -> [String]{
        let homeTeams = wkResults.map{$0.homeTeam}
        let awayTeams = wkResults.map{$0.awayTeam}
        let allTeams = homeTeams + awayTeams
        let uniqueTeams = Array(Set(allTeams)).sorted()
        return uniqueTeams
    }
}
