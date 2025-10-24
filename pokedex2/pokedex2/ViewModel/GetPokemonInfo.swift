import Foundation

func getPokemonInfo(from urlString: String) async throws -> PokemonInfo {
    
    
    guard let url = URL(string: urlString) else {
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
