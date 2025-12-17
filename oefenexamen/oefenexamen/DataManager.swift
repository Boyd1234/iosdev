import Foundation
@Observable
class DataManager {
    var cars: [Car] = []
    var favorites: [Car] = []
    
    func getBenzineCars() -> [Car]{
        let cars = getCars()
        let benzine = cars.filter{ $0.fuelType == "Benzine"}
        return benzine
    }
    
    func getElektrischeCars() -> [Car]{
        let cars = getCars()
        let elektrisch = cars.filter{ $0.fuelType == "Elektrisch"}
        return elektrisch
    }
    
    func getCars() -> [Car]{
        return cars
    }
    
    func addFavorite(car: Car){
        favorites.append(car)
        favorites.filter{ $0.id != $1.id}
    }
    
    func getFavorites() -> [Car]{
        return favorites
    }
    func loadCars() async {
       
        
        do {
            print("⏳ Loading car data...")
            try await Task.sleep(for: .seconds(1))
            let root : CarsResponse = load("cars.json")
            cars = root.cars
            //load cars
            print("✅ Data loaded successfully.")
        } catch {
            print("❌ Failed to load cars:", error)
        }
        
        
    }
    
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
