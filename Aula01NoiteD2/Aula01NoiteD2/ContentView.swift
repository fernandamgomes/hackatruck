//
//  ContentView.swift
//  Aula01NoiteD2
//
//  Created by Student10 on 05/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("bg")
                .resizable()
                .padding(.bottom)
                .scaledToFit()
            Image("cam")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .overlay(
                    VStack{
                        Text("Hackatruck")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                        HStack{
                            Text("Maker")
                                .font(.title2.bold())
                                .foregroundColor(Color.yellow)
                            Text("Space")
                                .font(.title2.bold())
                                .foregroundColor(Color.red)
                        }})
            Image("wallpaper")
                .resizable()
                .padding([.top, .leading, .trailing])
                .scaledToFit()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
