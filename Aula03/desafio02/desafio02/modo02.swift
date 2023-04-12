//
//  modo02.swift
//  desafio02
//
//  Created by Student10 on 11/04/23.
//

import SwiftUI

struct modo02: View {
    var body: some View {
        NavigationStack{
            VStack {
                NavigationLink(destination: modo03()) {
                    Text("Modo 03")
                }
            }
        }
    }
}

struct modo02_Previews: PreviewProvider {
    static var previews: some View {
        modo02()
    }
}
