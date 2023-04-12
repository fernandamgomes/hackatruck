//
//  ContentView.swift
//  desafio01
//
//  Created by Student10 on 11/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            tela01()
                .tabItem {
                    Label("Home",
                    systemImage: "house")
                }
            
            tela02()
                .tabItem {
                    Label("tela 02",
                    systemImage: "book")
                }
            
            tela03()
                .tabItem {
                    Label("tela 03",
                    systemImage: "newspaper")
                }
            
            tela04()
                .tabItem {
                    Label("tela 04",
                    systemImage: "network")
                }
            
            tela05()
                .tabItem {
                    Label("tela 05",
                    systemImage: "person.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
