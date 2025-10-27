//
//  MockPokemonView.swift
//  pokedex2
//
//  Created by Aluno Mack on 23/10/25.
//

import Foundation
import SwiftUI

import Foundation
import SwiftUI

struct MockPokemonView: View{
    @State public var n: Int = 1
    @State public var numeros = 0...5
    let screenSize: CGRect = UIScreen.main.bounds
    var body: some View{

        ZStack{
            Rectangle()
                .frame(width: screenSize.width, height: screenSize.height + 25)
                .foregroundStyle(
                    LinearGradient(
                        colors: [.black, .gray],
                        startPoint: .bottom,
                        endPoint: .top
                    )
                )

            VStack{
                
                VStack{
                    Image("placeholder")
                        .resizable()
                        .frame(width: 100, height: 100)
                    Text("N: 0")
                }
                HStack{
                    if(n == 1){
                        ZStack{
                            Rectangle()
                                .frame(width: 55, height: 22)
                                .foregroundStyle(.gray)
                                .cornerRadius(20)
                            Text("Fogo")
                                .fontWeight(.semibold)
                                .foregroundStyle(.black)
                                .font(Font.system(size: 10))
                        }
                    }else{
                        ZStack{
                            Rectangle()
                                .frame(width: 55, height: 22)
                                .foregroundStyle(.gray)
                                .cornerRadius(20)
                            Text("Fogo")
                                .fontWeight(.semibold)
                                .foregroundStyle(.white)
                                .font(Font.system(size: 10))
                        }

                        ZStack{
                            Rectangle()
                                .frame(width: 55, height: 22)
                                .foregroundStyle(.gray)
                                .cornerRadius(20)
                            Text("Fogo")
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
                            Text("Peso: 30")
                            Spacer()
                                .frame(width: 40)
                            Text("|")
                            Spacer()
                                .frame(width: 40)
                            Text("Altura: 30")
                        }.padding(.top)
                        Spacer()
                            .frame(height: 33)
                        VStack{
                            Text("Atributos")
                                .frame(maxWidth: screenSize.width - 14, alignment: .leading)
                                .bold()
                            Spacer()
                                .frame(height: 20)
                            ForEach(numeros, id: \.self){ index in
                                HStack{

                                    let rgb = rgbStat(stat: 120)
                                    if index == 2{
                                        Text("special-defence")
                                            .frame(maxWidth: 130, alignment: .leading)
                                    }else{
                                        Text("HP")
                                            .frame(maxWidth: 130, alignment: .leading)
                                    }
                                    Spacer()
                                        .frame(width: 20)
                                    ProgressView(value: 120, total: 260){
                                        Text("120")
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

}


struct MockPokemonView_Previews: PreviewProvider {
    static var previews: some View {
        MockPokemonView()
    }
}
