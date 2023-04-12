//
//  tela02.swift
//  desafio01
//
//  Created by Student10 on 11/04/23.
//

import SwiftUI

struct tela02: View {
    var body: some View {
        ZStack {
            Color(.systemIndigo)
                .ignoresSafeArea()
            Text("Roxo!")
                .foregroundColor(Color.white)
                .fontWeight(.bold)
                .font(.title)
        }
    }
}

struct tela02_Previews: PreviewProvider {
    static var previews: some View {
        tela02()
    }
}
