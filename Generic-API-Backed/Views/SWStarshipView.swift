import SwiftUI

struct SWStarshipView: View {
    
    var swstarship: SWStarships
    
    var body: some View {
        ScrollView {
            VStack (alignment: .leading) {
                Spacer()
                Text(swstarship.name)
                Spacer()
                VStack {
                    HStack {
                        Text("Model: ")
                        Text(swstarship.model)
                    }
                    .foregroundColor(.red)
                    HStack {
                        Text("Starship Class: ")
                        Text(swstarship.starship_class)
                    }
                    .foregroundColor(.orange)
                    HStack {
                        Text("Manufacturer: ")
                        Text(swstarship.manufacturer)
                    }
                    .foregroundColor(.yellow)
                    HStack {
                        Text("Cost in Credits: ")
                        Text(swstarship.cost_in_credits)
                    }
                    .foregroundColor(.green)
                    HStack {
                        Text("Length: ")
                        Text(swstarship.length)
                    }
                    .foregroundColor(.cyan)
                    HStack {
                        Text("Crew: ")
                        Text(swstarship.crew)
                    }
                    .foregroundColor(.blue)
                    HStack {
                        Text("Passengers: ")
                        Text(swstarship.passengers)
                    }
                    .foregroundColor(.indigo)
                    HStack {
                        Text("Max Atmosphere Speed: ")
                        Text(swstarship.max_atmosphere_speed)
                    }
                    .foregroundColor(.purple)
                    HStack {
                        Text("Hyperdrive Rating: ")
                        Text(swstarship.hyperdrive_rating)
                    }
                    .foregroundColor(.pink)
                    HStack {
                        Text("MGLT: ")
                        Text(swstarship.MGLT)
                    }
                    .foregroundColor(.gray)
                    HStack {
                        Text("Cargo Capacity: ")
                        Text(swstarship.cargo_capacity)
                    }
                    .foregroundColor(.red)
                    HStack {
                        Text("Consumables: ")
                        Text(swstarship.consumables)
                    }
                    .foregroundColor(.blue)
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

func randomSWStarship() async -> SWStarships? {
    loading = true
    let randomId = Int.random(in: 2...43)
    do {
        let loadedSWStarship = try await getSWStarships(id: randomId)
        loading = false
        return loadedSWStarship
    } catch {
        // appropriate error message
        print("Error fetching SWStarship")
    }
    return nil
}

//#Preview {
//    SWStarshipView()
//}
