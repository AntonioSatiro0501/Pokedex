//
//  Mock2View.swift
//  pokedex2
//
//  Created by Aluno Mack on 24/10/25.
//

import SwiftUI

struct Mock2View: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 15) {
                    Spacer()
                        .navigationTitle("Estágios Evolutivos")
                    Text("\(searchText)")
                        .searchable(text: $searchText)
                    
                    ZStack {
                        Rectangle()
                            .frame(width: 329, height: 380)
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [.black, .orange],
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                            .cornerRadius(15)
                        
                        HStack {
                            VStack {
                                Spacer()
                                VStack {
                                    Spacer()
                                    Text("Pokemon do Dia")
                                        .bold()
                                        .foregroundStyle(Color.white)
                                        .font(.title)
                                    Spacer(minLength: 50)
                                }
                                
                                VStack {
                                    Image("Charmander")
                                        .resizable()
                                        .frame(width: 200, height: 200)
                                    
                                    Spacer(minLength: 30)
                                    
                                    HStack(spacing: 150) {
                                        VStack {
                                            Text("Charmander")
                                                .bold()
                                                .foregroundStyle(Color.white)
                                            Text("Nº: 0004")
                                                .foregroundStyle(Color.white)
                                                .opacity(0.5)
                                                .font(Font.system(size: 10))
                                        }
                                        ZStack {
                                            Rectangle()
                                                .frame(width: 55, height: 22)
                                                .foregroundStyle(.red)
                                                .cornerRadius(20)
                                            Text("Fogo")
                                                .fontWeight(.semibold)
                                                .foregroundStyle(Color.white)
                                                .font(Font.system(size: 10))
                                        }
                                    }
                                }
                                Spacer(minLength: 20)
                            }
                        }
                    }
                    
                    NavigationLink(destination: MockView()) {
                        ZStack {
                            Rectangle()
                                .frame(width: 329, height: 114)
                                .foregroundStyle(
                                    LinearGradient(
                                        colors: [.black, .yellow],
                                        startPoint: .leading,
                                        endPoint: .trailing
                                    )
                                )
                                .cornerRadius(15)
                            
                            HStack {
                                VStack {
                                    Text("Estágio 1")
                                        .bold()
                                        .foregroundStyle(Color.white)
                                        .font(.title)
                                }
                            }
                        }
                    }
                    
                    ZStack {
                        Rectangle()
                            .frame(width: 329, height: 114)
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [.black, .orange],
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                            .cornerRadius(15)
                            
                        HStack {
                            VStack {
                                Text("Estágio 2")
                                    .bold()
                                    .foregroundStyle(Color.white)
                                    .font(.title)
                            }
                        }
                    }
                    
                    ZStack {
                        Rectangle()
                            .frame(width: 329, height: 114)
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [.black, .red],
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                            .cornerRadius(15)
                            
                        HStack {
                            VStack {
                                Text("Estágio 3")
                                    .bold()
                                    .foregroundStyle(Color.white)
                                    .font(.title)
                            }
                        }
                    }
                }
            }
        }
    }
}


struct Mock2View_Previews: PreviewProvider {
    static var previews: some View {
        Mock2View()
    }
}
