import Foundation

let SWAPI_ROOT = "https://swapi.dev/api/"
let SWAPI_films_ENDPOINT = "\(SWAPI_ROOT)/films/"
let SWAPI_people_ENDPOINT = "\(SWAPI_ROOT)/people/"
let SWAPI_planets_ENDPOINT = "\(SWAPI_ROOT)/planets/"
let SWAPI_starships_ENDPOINT = "\(SWAPI_ROOT)/starships/"

enum SWAPIError: Error {
    case unsuccessfulDecode
}

func getSWFilm(id: Int) async throws -> SWFilms {
        guard let url = URL(string: "\(SWAPI_films_ENDPOINT)/\(id)/") else {
            fatalError("Should never happen, but just in case…URL didn’t work 😔")
        }
    
        print("About to call Url Session")

        let (data, _) = try await URLSession.shared.data(from: url)
        print("Finished URL Seission and about to start deocding")
        if let decodedPage = try? JSONDecoder().decode(SWFilms.self, from: data) {
            print("Finished decodng")
            return decodedPage
        } else {
            throw SWAPIError.unsuccessfulDecode
        }
}

func getSWPeople(id: Int) async throws -> SWPeople {
        guard let url = URL(string: "\(SWAPI_people_ENDPOINT)/\(id)/") else {
            fatalError("Should never happen, but just in case…URL didn’t work 😔")
        }

        let (data, _) = try await URLSession.shared.data(from: url)
        if let decodedPage = try? JSONDecoder().decode(SWPeople.self, from: data) {
            return decodedPage
        } else {
            throw SWAPIError.unsuccessfulDecode
        }
}

func getSWPlanet(id: Int) async throws -> SWPlanets {
        guard let url = URL(string: "\(SWAPI_planets_ENDPOINT)/\(id)/") else {
            fatalError("Should never happen, but just in case…URL didn’t work 😔")
        }

        let (data, _) = try await URLSession.shared.data(from: url)
        if let decodedPage = try? JSONDecoder().decode(SWPlanets.self, from: data) {
            return decodedPage
        } else {
            throw SWAPIError.unsuccessfulDecode
        }
}

func getSWStarships(id: Int) async throws -> SWStarships {
        guard let url = URL(string: "\(SWAPI_starships_ENDPOINT)/\(id)/") else {
            fatalError("Should never happen, but just in case…URL didn’t work 😔")
        }
    
        print("About to call Url Session")

        let (data, _) = try await URLSession.shared.data(from: url)
        print("Finished URL Seission and about to start deocding")
        if let decodedPage = try? JSONDecoder().decode(SWStarships.self, from: data) {
            print("Finished decodng")
            return decodedPage
        } else {
            throw SWAPIError.unsuccessfulDecode
        }
}
