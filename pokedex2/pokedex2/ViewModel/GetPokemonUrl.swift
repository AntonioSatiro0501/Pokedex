import Foundation

func getResults() async throws -> [PokemonUrl] {

    let endpoind = "https://pokeapi.co/api/v2/pokemon?limit=151"
    
    guard let url = URL(string: endpoind) else {
        throw PError.invalidURL
    }
    
    let (data, response) = try await URLSession.shared.data(from: url)
    
    guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
        throw PError.invalidResponse
    }
    
    do {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return try decoder.decode(PokemonResults.self, from: data).results
    } catch {
        throw PError.invalidData
    }
}



