//
//  musicaDetalhes.swift
//  spotify
//
//  Created by Student10 on 12/04/23.
//

import SwiftUI

struct musicaDetalhes: View {
    var musica: Musica
    var body: some View {
        ZStack{
            LinearGradient(colors: [Color("rosinha"), Color.black], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                Image(musica.img)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350.0, height: 350.0)
                Text(musica.nome)
                    .foregroundColor(Color.white)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top, 25.0)
                Text(musica.artista)
                    .foregroundColor(Color.white)
                    .fontWeight(.semibold)
                HStack{
                    Image(systemName: "shuffle")
                        .resizable()
                        .foregroundColor(Color.white)
                        .frame(width:30.0, height:25.0)
                        .padding(.trailing, 25.0)
                    Image(systemName: "backward.fill")
                        .resizable()
                        .foregroundColor(Color.white)
                        .frame(width:30.0, height:25.0)
                        .padding(.trailing, 25.0)
                    Image(systemName: "play.fill")
                        .resizable()
                        .foregroundColor(Color.white)
                        .frame(width:55.0, height:55.0)
                        .padding(.trailing, 25.0)
                    Image(systemName: "forward.fill")
                        .resizable()
                        .foregroundColor(Color.white)
                        .frame(width:30.0, height:25.0)
                        .padding(.trailing, 25.0)
                    Image(systemName: "repeat")
                        .resizable()
                        .foregroundColor(Color.white)
                        .frame(width:30.0, height:25.0)
                }
                .padding(.top)
            }
        }
    }
}

struct musicaDetalhes_Previews: PreviewProvider {
    static var previews: some View {
        var teste = Musica(nome: "teste", artista: "teste", img: "rosa")
        musicaDetalhes(musica: teste)
    }
}
