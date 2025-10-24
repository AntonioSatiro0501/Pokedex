//
//  PokemonView.swift
//  pokedex2
//
//  Created by Aluno Mack on 24/10/25.
//

import SwiftUI

import SwiftUI

struct PokemonView: View {
    @State public var detalhes: PokemonInfo?
    @State public var url: String?
    let pokemon: PokemonUrl
    let screenSize: CGRect = UIScreen.main.bounds
    var body: some View {
        ZStack{
            if let detalhes{
                let cor1 = TypeEnum(rawValue: detalhes.types[0].type.name)?.color ?? .black
                Rectangle()
                    .frame(width: screenSize.width, height: screenSize.height )
                    .foregroundStyle(
                        LinearGradient(
                            colors: [.black, cor1],
                            startPoint: .bottom,
                            endPoint: .top
                        )
                    )

                VStack{
                    
                    VStack{
                        if let url, let urlS = URL(string: url) {
                            AsyncImage(url: urlS, content: { img in
                                if let imgg = img.image {
                                    imgg
                                        .resizable()
                                        .frame(width: 125, height: 125)
                                }else{
                                    Image("???")
                                        .resizable()
                                        .frame(width: 100, height: 100)
                                }
                            })
                        }
                        Text("N: "+"\(detalhes.id)")
                    }
                    HStack{
                        if(detalhes.types.count == 1){
                            ZStack{
                                Rectangle()
                                    .frame(width: 55, height: 22)
                                    .foregroundStyle(cor1)
                                    .cornerRadius(20)
                                Text("\(detalhes.types[0].type.name)")
                                    .fontWeight(.semibold)
                                    .foregroundStyle(.black)
                                    .font(Font.system(size: 10))
                            }
                        }else{
                            ZStack{
                                Rectangle()
                                    .frame(width: 55, height: 22)
                                    .foregroundStyle(cor1)
                                    .cornerRadius(20)
                                Text("\(detalhes.types[0].type.name)")
                                    .fontWeight(.semibold)
                                    .foregroundStyle(.white)
                                    .font(Font.system(size: 10))
                            }

                            ZStack{
                                Rectangle()
                                    .frame(width: 55, height: 22)
                                    .foregroundStyle(TypeEnum(rawValue: detalhes.types[1].type.name)?.color ?? .black)
                                    .cornerRadius(20)
                                Text("\(detalhes.types[1].type.name)")
                                    .fontWeight(.semibold)
                                    .foregroundStyle(.white)
                                    .font(Font.system(size: 10))
                            }
                        }
                        
                    }
                    Spacer()
                        .frame(height: 500)
                    
                }
                VStack{
                    
                    Spacer()
                        .frame(height: 280)
                    ZStack{

                        Rectangle()
                            .frame(width: screenSize.width, height: 550)
                            .foregroundStyle(.white)
                            .cornerRadius(40)
                            .padding(.bottom, 20)

                        VStack{
                            HStack{
                                Text("Peso: "+"\(detalhes.weight)")
                                Spacer()
                                    .frame(width: 40)
                                Text("|")
                                Spacer()
                                    .frame(width: 40)
                                Text("Altura: "+"\(detalhes.height)")
                            }.padding(.top)
                            Spacer()
                                .frame(height: 33)
                            VStack{
                                Text("Atributos")
                                    .frame(maxWidth: screenSize.width - 14, alignment: .leading)
                                    .bold()
                                Spacer()
                                    .frame(height: 20)
                                ForEach(detalhes.stats, id: \.self){ index in
                                    HStack{

                                        let rgb = rgbStat(stat: index.baseStat)
                                        Text("\(index.stat.name)")
                                            .frame(maxWidth: 130, alignment: .leading)
                                        Spacer()
                                            .frame(width: 20)
                                        ProgressView(value: Double(index.baseStat), total: 260){
                                            Text("\(index.baseStat)")
                                        }
                                            .tint(Color(red: (rgb[0]/255), green: (rgb[1]/255), blue: (rgb[2]/255)))
                                            .frame(width: 220)
                                    }
                                }
                            }
                        }
                    }
                }
            }
            
            
            
        }
        .task{
            do{
                let detalhe = try await getPokemonInfo(from: pokemon.url)
                self.url = detalhe.sprites.frontDefault
                self.detalhes = detalhe
            } catch{
                print("Erro ao buscar sprite pokemon \(pokemon)")
            }
        }
    }
}

struct PokemonView_Previews: PreviewProvider {
    static var previews: some View {
        
        PokemonView(
            pokemon: PokemonUrl(
                name: "pikachu",
                url: "https://pokeapi.co/api/v2/pokemon/25"
            )
        )

    }
}

