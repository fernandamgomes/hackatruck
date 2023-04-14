//
//  descricaoLocal.swift
//  mapas
//
//  Created by Student10 on 13/04/23.
//

import SwiftUI
import MapKit

struct descricaoLocal: View {
    var local : local
    var body: some View {
        ScrollView {
            VStack{
                Text(local.nome)
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(Color.teal)
                    .padding(.top, 30.0)
                AsyncImage(url: URL(string: local.foto)){ image in
                    image
                        .resizable()
                        .scaledToFit()
                        
                } placeholder: {
                    ProgressView()
                }
                Text(local.descricao)
                    .padding(.top, 20.0)
            }.padding(.horizontal, 20.0)
        }
    }
}

struct descricaoLocal_Previews: PreviewProvider {
    static var previews: some View {
        var teste = local(nome: "teste", descricao: "teste", foto: "https://www.maladeaventuras.com/wp-content/uploads/2020/09/o-que-fazer-no-rio-de-janeiro.jpg", latlong: CLLocationCoordinate2D(latitude: 0, longitude: 0))
        descricaoLocal(local: teste)
    }
}
