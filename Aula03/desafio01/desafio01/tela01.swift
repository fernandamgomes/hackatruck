//
//  tela01.swift
//  desafio01
//
//  Created by Student10 on 11/04/23.
//

import SwiftUI

struct tela01: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Essa é uma lista")
                .fontWeight(.bold)
                .font(.title)
            List(1...10, id:\.self) {
                Text("Item de lista \($0)")
            }
        }
    }
}

struct tela01_Previews: PreviewProvider {
    static var previews: some View {
        tela01()
    }
}
