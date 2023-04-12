//
//  ContentView.swift
//  desafio02
//
//  Created by Student10 on 11/04/23.
//

import SwiftUI

struct ContentView: View {
    @State private var toggle = false

    var body: some View {
        NavigationStack{
            VStack {
                NavigationLink(destination: modo01()) {
                    Text("Modo 01")
                }
                NavigationLink(destination: modo02()) {
                    Text("Modo 02")
                }
                Button("Modo 03") {
                            toggle.toggle()
                        }
                        .sheet(isPresented: $toggle) {
                            modo03()
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
