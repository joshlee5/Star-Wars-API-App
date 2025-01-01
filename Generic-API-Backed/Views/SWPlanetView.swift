import SwiftUI

struct SWPlanetView: View {
    
    var swplanet: SWPlanets
    
    var body: some View {
        ScrollView {
            VStack (alignment: .leading) {
                Spacer()
                Text(swplanet.name)
                Spacer()
                VStack {
                    HStack {
                        Text("Diameter: ")
                        Text(swplanet.diameter)
                    }
                    .foregroundColor(.red)
                    HStack {
                        Text("Rotation Period: ")
                        Text(swplanet.rotation_period)
                    }
                    .foregroundColor(.orange)
                    HStack {
                        Text("Orbital Period: ")
                        Text(swplanet.orbital_period)
                    }
                    .foregroundColor(.yellow)
                    HStack {
                        Text("Gravity: ")
                        Text(swplanet.gravity)
                    }
                    .foregroundColor(.green)
                    HStack {
                        Text("Population: ")
                        Text(swplanet.population)
                    }
                    .foregroundColor(.cyan)
                    HStack {
                        Text("Climate: ")
                        Text(swplanet.climate)
                    }
                    .foregroundColor(.blue)
                    HStack {
                        Text("Terrain: ")
                        Text(swplanet.terrain)
                    }
                    .foregroundColor(.indigo)
                    HStack {
                        Text("Surface Water: ")
                        Text(swplanet.surface_water)
                    }
                    .foregroundColor(.purple)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .background(Rectangle().foregroundColor(.black))
                .underline()
            }
                
            Divider()
        }
    }
}

func randomSWPlanet() async -> SWPlanets? {
    loading = true
    let randomId = Int.random(in: 1...60)
    do {
        let loadedSWPlanet = try await getSWPlanet(id: randomId)
        loading = false
        return loadedSWPlanet
    } catch {
        // appropriate error message
        print("Error fetching SWPlanet")
    }
    return nil
}

//#Preview {
//    SWPlanetView()
//}
