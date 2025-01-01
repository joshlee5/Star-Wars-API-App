import Foundation

struct SWFilms: Hashable, Codable {
    var title: String
    var episode_id: Int
    var opening_crawl: String
    var director: String
    var producer: String
    var release_date: String
    var species: Array<String>
    var starships: Array<String>
    var characters: Array<String>
    var planets: Array<String>
    var url: String
    var created: String
    var edited: String
}

struct SWFilmsPage: Hashable, Codable {
    var result: SWFilms
}
