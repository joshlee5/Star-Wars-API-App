import Foundation

struct SWPeople: Hashable, Codable {
    var name: String
    var birth_year: String
    var eye_color: String
    var gender: String
    var hair_color: String
    var height: String
    var mass: String
    var skin_color: String
    var homeworld: String
    var films: Array<String>
    var species: Array<String>
    var starships: Array<String>
    var vehicles: Array<String>
    var url: String
    var created: String
    var edited: String
}

struct SWPeoplePage: Hashable, Codable {
    var result: SWPeople
}
