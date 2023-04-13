//
//  ContentView.swift
//  spotify
//
//  Created by Student10 on 12/04/23.
//

import SwiftUI

struct ContentView: View {
    var musicas = [
        Musica(nome: "BLEACH", artista: "BROCKHAMPTON", img: "sat3"),
        Musica(nome: "KEEP IT SOUTHERN", artista: "BROCKHAMPTON", img: "tm"),
        Musica(nome: "I THINK", artista: "Tyler the Creator", img: "igor"),
        Musica(nome: "Cómo me Quieres", artista: "Khruangbin", img: "como"),
        Musica(nome: "Angelica", artista: "Wet Leg", img: "wetleg"),
        Musica(nome: "DESPECHÁ", artista: "ROSALÍA", img: "rosa")
    ]
    var sugeridos = [
        Musica(nome: "Weekend 4 the girls", artista: "Dream Girl", img: "dream"),
        Musica(nome: "Awaken, My Love!", artista: "Childish Gambino", img: "redbone"),
        Musica(nome: "Blonde", artista: "Frank Ocean", img: "frank")
    ]
    var body: some View {
        NavigationStack{
            ZStack{
                LinearGradient(colors: [Color("rosinha"), Color.black], startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                ScrollView {
                    VStack  {
                        Image("cover")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 260 , height:260)
                            .padding(.top, 25.0)
                            .padding(.bottom, 15.0)
                        Text("Abril23")
                            .fontWeight(.bold)
                            .font(.title)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.leading)
                        HStack {
                            Image("user")
                                .resizable()
                                .frame(width: 40 , height:40)
                                .clipShape(Circle())
                                .padding(.leading)
                            Text("fernandamendesgomes")
                                .fontWeight(.medium)
                                .foregroundColor(Color.white)
                            
                            Spacer()
                        }.padding(.bottom, 20.0)
                        
                        ForEach(musicas) { musica in
                            NavigationLink(destination: musicaDetalhes(musica: musica)) {
                                HStack{
                                    Image(musica.img)
                                        .resizable()
                                        .frame(width: 60 , height:60)
                                        .padding(.leading)
                                    VStack(alignment: .leading) {
                                        Text(musica.nome)
                                            .foregroundColor(Color.white)
                                            .fontWeight(.semibold)
                                        Text(musica.artista)
                                            .foregroundColor(Color.white)
                                    }
                                    Spacer()
                                    Image(systemName: "ellipsis")
                                        .foregroundColor(Color.white)
                                        .padding(.trailing)
                                }
                            }
                        }
                        Text("Mais que talvez você goste")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(.top, 50.0)
                            .padding(.bottom, 25.0)
                        ScrollView(.horizontal){
                            HStack(spacing: 15){
                                ForEach(sugeridos) { musica in
                                    VStack{
                                        Image(musica.img)
                                            .resizable()
                                            .frame(width: 260 , height:260)
                                            .padding(.leading)
                                        Text(musica.nome)
                                            .fontWeight(.semibold)
                                            .foregroundColor(Color.white)
                                            .padding(.top)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
