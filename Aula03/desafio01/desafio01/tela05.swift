//
//  tela05.swift
//  desafio01
//
//  Created by Student10 on 11/04/23.
//

import SwiftUI

struct tela05: View {
    var body: some View {
        ZStack {
            Color(.systemPink)
                .ignoresSafeArea()
            Text("Rosa!")
                .foregroundColor(Color.white)
                .fontWeight(.bold)
                .font(.title)
        }
    }
}

struct tela05_Previews: PreviewProvider {
    static var previews: some View {
        tela05()
    }
}
