import Foundation

struct PokemonInfo: Codable {
    
    let name : String
    let id: Int
    let height: Int
    let weight: Int
    let types: [String]
    let stats: [String]
    let sprites: [String: String]
}
