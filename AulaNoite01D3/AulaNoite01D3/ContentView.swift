//
//  ContentView.swift
//  AulaNoite01D3
//
//  Created by Student10 on 05/04/23.
//

import SwiftUI

struct ContentView: View {
    @State private var name:String=""
    @State private var showingAlert = false
    var body: some View {
        ZStack{
            Image("bg")
                .resizable()
                .scaledToFill()
                .blur(radius: 5)
                .opacity(0.3)
                .frame(width: 400, height: 900)
            
            VStack(alignment: .center) {
                Spacer()
                Text("Bem Vindo, \(name)")
                    .font(.title.bold())
                TextField("Fulano", text: $name)
                    .multilineTextAlignment(.center) 
                Spacer()
                VStack{
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300)
                    Image("truck")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300)
                }
                Spacer()
                Button("Entrar") {
                    showingAlert = true
                }
                .alert("Alerta!!", isPresented: $showingAlert) {
                        Button("OK") { }
                    }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
