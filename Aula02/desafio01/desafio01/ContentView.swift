//
//  ContentView.swift
//  desafio01
//
//  Created by Student10 on 10/04/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var peso: Double = 0
    @State private var altura: Double = 0
    @State private var resultado: Double = 0
    @State private var texto: String = ""
    @State private var cor: Color = .white
    var body: some View {
        VStack {
            Text("Calculadora IMC")
                .font(.title)
                .fontWeight(.bold)
            TextField("Digite seu peso", value: $peso, format: .number)
                .padding(.horizontal)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.numberPad)
                .font(.title2)
            TextField("Digite sua altura em metros", value: $altura, format: .number)
                .padding(.all)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.numberPad)
                .font(.title2)
            
            Button("Calcular"){
                resultado = peso/(altura*altura)
                    if (resultado < 18.5) {
                        texto = "baixo peso"
                        cor = Color("baixoPeso")
                    }
                    else if ((resultado >= 18.5) && (resultado < 25)) {
                        texto = "normal"
                        cor = Color("normal")
                    }
                    else if ((resultado >= 25) && (resultado < 30)) {
                        texto = "sobrepeso"
                        cor = Color("sobrepeso")
                    } else if (resultado > 30) {
                        texto = "obesidade"
                        cor = Color("obesidade")
                    }
            }
            .font(.title3)
            .fontWeight(.bold)
            .padding(.all)
            .background(Color.blue)
            .foregroundColor(Color.white)
            .cornerRadius(10)
            
            Spacer()
            Text(texto)
                .multilineTextAlignment(.center)
                .font(.title2)
                .fontWeight(.bold)
            Spacer()
            Image("tabela")
                .resizable()
                .scaledToFit()
                .ignoresSafeArea(.all)
        }
        .background(cor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
