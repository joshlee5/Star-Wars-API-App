import SwiftUI

var loading = false

struct SWFilmView: View {
    
    var swfilm: SWFilms
    
    @State private var isTitleVisible = false
    
    var body: some View {
        ScrollView {
            VStack (alignment: .leading) {
                Spacer()
                Text(swfilm.title)
                    .bold()
                    .opacity(isTitleVisible ? 1.0 : 0.0)
                    .onAppear {
                        withAnimation(.easeInOut(duration: 0.5)) {
                            self.isTitleVisible = true
                        }
                    }
                Spacer()
                VStack {
                    HStack {
                        Text("Directed by: ")
                        Text(swfilm.director)
                    }
                    Spacer()
                    HStack {
                        Text("Produced by: ")
                        Text(swfilm.producer)
                    }
                    Spacer()
                    HStack {
                        Text("Released on: ")
                        Text(swfilm.release_date)
                    }
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .background(Rectangle().foregroundColor(.blue))
                .foregroundColor(.white)
                .underline()
            }
            .foregroundColor(.indigo)
                
            Divider()
            
            Text("Opening Crawl")
                .font(.title2)
                .bold()
                .background(Rectangle().foregroundColor(.black))
                .foregroundColor(.orange)
            Text(swfilm.opening_crawl)
                .underline()
                .background(Rectangle().foregroundColor(.black))
                .foregroundColor(.yellow)
                
            Divider()
        }
    }
}

func randomSWFilm() async -> SWFilms? {
    loading = true
    let randomId = Int.random(in: 1...6)
    do {
        let loadedSWFilm = try await getSWFilm(id: randomId)
        loading = false
        return loadedSWFilm
    } catch {
        // appropriate error message
        print("Error fetching SWFilm")
    }
    return nil
}

//#Preview {
//    SWFilmView()
//}
