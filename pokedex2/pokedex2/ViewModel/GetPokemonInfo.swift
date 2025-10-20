import Foundation

func getPokemonInfo(indice: Int, results: PokemonResults) async throws -> PokemonInfo {
    
    let endpoind = results.results[indice].url
    
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
        return try decoder.decode(PokemonInfo.self, from: data)
    } catch {
        throw PError.invalidData
    }
}
