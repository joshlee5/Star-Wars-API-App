import SwiftUI

struct SWPeopleView: View {
    
    var swpeople: SWPeople
    
    var body: some View {
        ScrollView {
            VStack (alignment: .leading) {
                Spacer()
                Text(swpeople.name)
                Spacer()
                VStack {
                    HStack {
                        Text("Born: ")
                        Text(swpeople.birth_year)
                    }
                    .foregroundColor(.red)
                    HStack {
                        Text("Eye Color: ")
                        Text(swpeople.eye_color)
                    }
                    .foregroundColor(.orange)
                    HStack {
                        Text("Gender: ")
                        Text(swpeople.gender)
                    }
                    .foregroundColor(.yellow)
                    HStack {
                        Text("Hair Color: ")
                        Text(swpeople.hair_color)
                    }
                    .foregroundColor(.green)
                    HStack {
                        Text("Height: ")
                        Text(swpeople.height)
                    }
                    .foregroundColor(.cyan)
                    HStack {
                        Text("Mass: ")
                        Text(swpeople.mass)
                    }
                    .foregroundColor(.blue)
                    HStack {
                        Text("Skin Color: ")
                        Text(swpeople.skin_color)
                    }
                    .foregroundColor(.indigo)
                    HStack {
                        Text("Homeworld: ")
                        Text(swpeople.homeworld)
                    }
                    .foregroundColor(.purple)
                }
                .font(.subheadline)
                .background(Rectangle().foregroundColor(.black))
                .foregroundStyle(.secondary)
                .underline()
                
                Divider()
            }
        }
    }
}

func randomSWPeople() async -> SWPeople? {
    loading = true
    let randomId = Int.random(in: 1...83)
    do {
        let loadedSWPeople = try await getSWPeople(id: randomId)
        loading = false
        return loadedSWPeople
    } catch {
        // appropriate error message
        print("Error fetching SWPeople")
    }
    return nil
}

//#Preview {
//    SWPeopleView()
//}
