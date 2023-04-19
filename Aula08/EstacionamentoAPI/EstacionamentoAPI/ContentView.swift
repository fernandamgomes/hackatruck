//
//  ContentView.swift
//  EstacionamentoAPI
//
//  Created by Student10 on 18/04/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = EstacionamentoView()
    var body: some View {
        VStack {
            ScrollView{
                ForEach(viewModel.estacionamentos, id: \._id){ estacionamento in
                    Text("Nome: \(estacionamento.nomeEstacionamento!)")
                        .padding(.top, 40.0)
                    Text("Endereço: \(estacionamento.endereco!)")
                    Text("Número vagas: \(estacionamento.vagas!)")
                    Text("Carros:")
                    ForEach(estacionamento.carros!, id: \.modelo){ carro in
                        Text("Modelo: " + carro.modelo!)
                        Text("Cor: " + carro.cor!)
                    }
                }
            }
        }
        .padding()
        .onAppear(){
            viewModel.fetch()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
