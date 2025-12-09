//
//  GalleryData.swift
//  labo7galleries
//
//  Created by Boyd Bulcaen on 09/12/2025.
//

import Foundation
@Observable
class GalleryData{
    private var galleries = [Gallery]()
    
    init(){
        
    }
    
    func getGalleries() -> [Gallery] {
        galleries.galleries
    }
    
    func loadData() async {
        do{
            print("simulating 2 second load delay")
            try await Task.sleep(for: .seconds(2))
            
            let data : [Gallery] = try load("galleries.json")
            galleries = data
            
            print("data loaded successfully")
        } catch {
            print("failed to load galleries:", error)
        }
    }
}
