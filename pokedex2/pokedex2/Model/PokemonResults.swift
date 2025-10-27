import Foundation

//-------------------------------------------------------------
// Pokemon Results
//-------------------------------------------------------------
struct PokemonResults: Codable {
    let results: [PokemonUrl]
}

//-------------------------------------------------------------
// Pokemon Url
//-------------------------------------------------------------
struct PokemonUrl: Codable, Identifiable, Hashable {
    
    let name: String
    let url: String
    var id: String{ url }
}

//-------------------------------------------------------------
// Detalhes Pokemon
//-------------------------------------------------------------
struct PokemonInfo: Codable {
    
    let name : String
    let id: Int
    let height: Int
    let weight: Int
    let types: [PokemonType]
    let stats: [PokemonBaseStats]
    let sprites: PokemonFront
}

//-------------------------------------------------------------
// Tipos
//-------------------------------------------------------------
struct PokemonType: Codable {
    
    let slot: Int
    let type: PokemonType2
}

//-------------------------------------------------------------
// Segunda instancia de tipo
//-------------------------------------------------------------
struct PokemonType2: Codable {
    
    let name: String
}

//-------------------------------------------------------------
// Base Stat
//-------------------------------------------------------------
struct PokemonBaseStats: Codable, Hashable {
    let baseStat: Int
    let stat: PokemonStatName
}

struct PokemonStatName: Codable, Hashable{
    
    let name: String
}

//-------------------------------------------------------------
// Other sprite
//-------------------------------------------------------------
struct PokemonOther: Codable {
    let other: PokemonOfficialArtwork
}

//-------------------------------------------------------------
// Official ArtWork
//-------------------------------------------------------------
struct PokemonOfficialArtwork: Codable{
    let officialArtwork: PokemonFront
}

//-------------------------------------------------------------
// Front Sprite
//-------------------------------------------------------------
struct PokemonFront: Codable {
    let frontDefault: String
}
