//
//  ContentView.swift
//  mapas
//
//  Created by Student10 on 13/04/23.
//
import MapKit
import SwiftUI

struct ContentView: View {
    @State private var toggle = false
    @State private var region = MKCoordinateRegion (
        center: CLLocationCoordinate2D (
            latitude:-14.4095261,
            longitude:-51.31668
        ),
        span: MKCoordinateSpan(
            latitudeDelta: 20, longitudeDelta: 20
        )
    )
    var meusLocais = [
        local(nome: "Brasil", descricao: "O Brasil, um vasto país sul-americano, estende-se da Bacia Amazônica, no norte, até os vinhedos e as gigantescas Cataratas do Iguaçu, no sul. O Rio de Janeiro, simbolizado pela sua estátua de 38 metros de altura do Cristo Redentor, situada no topo do Corcovado, é famoso pelas movimentadas praias de Copacabana e Ipanema, bem como pelo imenso e animado Carnaval, com desfiles de carros alegóricos, fantasias extravagantes e samba.", foto: "https://www.maladeaventuras.com/wp-content/uploads/2020/09/o-que-fazer-no-rio-de-janeiro.jpg", latlong: CLLocationCoordinate2D(latitude: -14.4095261, longitude: -51.31668)),
        local(nome: "Itália", descricao: "A Itália, país europeu com uma longa costa mediterrânea, deixou uma marca poderosa na culinária e na cultura ocidentais. A capital, Roma, é sede do Vaticano e abriga obras de arte monumentais e ruínas antigas. Outra cidade importante é Florença, com obras-primas do Renascimento, como o Davi, de Michelangelo, e o Domo de Brunelleschi. Destacam-se também Veneza, a cidade dos canais, e Milão, capital da moda italiana.", foto: "https://www.thediaryofanomad.com/wp-content/uploads/2020/11/rome-for-3-days-in-rome-itinerary-vatican-dome-view.jpg", latlong: CLLocationCoordinate2D(latitude: 41.29085, longitude: 12.71216) ),
        local(nome: "Grécia", descricao: "A Grécia é um país do sudeste da Europa com milhares de ilhas espalhadas pelos mares Egeu e Jônico. Bastante influente na antiguidade, a nação é considerada o berço da civilização ocidental. Atenas, sua capital, conserva monumentos como a Acrópole, do século V a.C., onde fica o templo Partenon. A Grécia também é conhecida por suas praias, como Santorini, com suas areias escuras, e os festivos complexos hoteleiros de Míconos.", foto: "https://res.cloudinary.com/worldpackers/image/upload/c_limit,f_auto,q_auto,w_1140/qavlf2bkiyqwv81cgeqa", latlong: CLLocationCoordinate2D(latitude: 38.1458392, longitude: 24.3244339)),
    ]
    var body: some View {
        VStack {
            Text("Mapas")
                .font(.title)
                .fontWeight(.black)
                .foregroundColor(Color.orange)
            
            Map(coordinateRegion: $region, annotationItems: meusLocais) { local in
                MapAnnotation(coordinate: local.latlong){
                    Circle().frame(width: 20.0, height: 20.0) .foregroundColor(Color.indigo)
                        .onTapGesture {
                            toggle.toggle()
                        }
                        .sheet(isPresented: $toggle) {
                            descricaoLocal(local: local)
                        }
                }
                        
            }
                
            
            HStack{
                ForEach (meusLocais) { local in
                    Button(action: {
                        region.center = local.latlong
                    }) {
                        Text(local.nome)
                            .fontWeight(.semibold)
                            .padding(.horizontal)
                            .padding(.vertical, 5.0)
                            .background(Color.teal)
                            .clipShape(Capsule())
                            .foregroundColor(Color.white)
                    }
                    .contentShape(Rectangle())
                }
                .padding(.top)
            }
                
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
