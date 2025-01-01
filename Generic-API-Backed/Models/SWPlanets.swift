import Foundation

struct SWPlanets: Hashable, Codable {
    var name: String
    var diameter: String
    var rotation_period: String
    var orbital_period: String
    var gravity: String
    var population: String
    var climate: String
    var terrain: String
    var surface_water: String
    var residents: Array<String>
    var films: Array<String>
    var url: String
    var created: String
    var edited: String
}

struct SWPlanetsPage: Hashable, Codable {
    var result: SWPlanets
}
