import SwiftUI

struct ContentView: View {
    
    @State var film: SWFilms?
    @State var people: SWPeople?
    @State var planet: SWPlanets?
    @State var starship: SWStarships?
    
    
    var body: some View {
        VStack {
            Text("Welcome to Star Wars Database")
                .bold()
            Text("Click on the buttons below to get information on a random film, character, planet, or starship!")
        }
        .foregroundStyle(.orange)
        .background(Rectangle().foregroundColor(.black))
        
        NavigationView {
            ScrollView {
                Button("Generate random Star Wars Film") {
                    Task {
                        film = await randomSWFilm()
                    }
                }
                .padding()
                .background(Color(.cyan))
                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                .padding(.horizontal)
                
                Divider()
                
                Button("Generate random Star Wars Character") {
                    Task {
                        people = await randomSWPeople()
                    }
                }
                .padding()
                .background(Color(.green))
                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                .padding(.horizontal)
                
                Divider()
                
                Button("Generate random Star Wars Planet") {
                    Task {
                        planet = await randomSWPlanet()
                    }
                }
                .padding()
                .background(Color(.purple))
                .cornerRadius(3.0)
                .padding(.horizontal)
                
                Divider()
                
                Button("Generate random Star Wars Starship") {
                    Task {
                        starship = await randomSWStarship()
                    }
                }
                .padding()
                .background(Color(.red))
                .cornerRadius(3.0)
                .padding(.horizontal)
                
                
                if let randomfilm = film {
                    SWFilmView(swfilm: randomfilm)
                }
                if let randompeople = people {
                    SWPeopleView(swpeople: randompeople)
                }
                if let randomplanet = planet {
                    SWPlanetView(swplanet: randomplanet)
                }
                if let randomstarship = starship {
                    SWStarshipView(swstarship: randomstarship)
                }
            }
            .background(
            LinearGradient(gradient: Gradient(colors: [.black, .white]), startPoint: .top, endPoint: .bottom)
            )
        }
        .padding()
        .background(
        LinearGradient(gradient: Gradient(colors: [.black, .white]), startPoint: .top, endPoint: .bottom)
        )
    }
}


#Preview {
    ContentView()
}
