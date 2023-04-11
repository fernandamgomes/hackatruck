//
//  ContentView.swift
//  Aula01Noite
//
//  Created by Student10 on 05/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("bg")
                .resizable()
                .scaledToFit()
            Text("Hackatruck").font(.title.bold()).foregroundColor(Color.blue)
            HStack {
                Text("Maker").font(.title2.bold()).foregroundColor(Color.yellow)
                Text("Space").font(.title2.bold()).foregroundColor(Color.red)
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
