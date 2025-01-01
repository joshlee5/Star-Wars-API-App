import Foundation

struct SWStarships: Hashable, Codable {
    var name: String
    var model: String
    var starship_class: String
    var manufacturer: String
    var cost_in_credits: String
    var length: String
    var crew: String
    var passengers: String
    var max_atmosphere_speed: String
    var hyperdrive_rating: String
    var MGLT: String
    var cargo_capacity: String
    var consumables: String
    var films: Array<String>
    var pilots: Array<String>
    var url: String
    var created: String
    var edited: String
}

struct SWStarshipsPage: Hashable, Codable {
    var result: SWStarships
}


