//
//  Landmark.swift
//  lab4demo
//
//  Created by Boyd Bulcaen on 15/10/2025.
//

import Foundation
import SwiftUI
import CoreLocation

//identifiable is om aan te tonen dat het uniek is dus dan moet je geen id meer zetten in je for loop
struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
            )
    }
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
