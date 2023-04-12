//
//  tela03.swift
//  desafio01
//
//  Created by Student10 on 11/04/23.
//

import SwiftUI

struct tela03: View {
    var body: some View {
        ZStack {
            Color(.systemMint)
                .ignoresSafeArea()
            Text("Verde!")
                .foregroundColor(Color.white)
                .fontWeight(.bold)
                .font(.title)
        }
    }
}

struct tela03_Previews: PreviewProvider {
    static var previews: some View {
        tela03()
    }
}
