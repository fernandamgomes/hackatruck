//
//  EstacionamentoView.swift
//  EstacionamentoAPI
//
//  Created by Student10 on 18/04/23.
//

import Foundation

struct Estacionamento: Decodable {
    var _id : String?
    var nomeEstacionamento: String?
    var endereco: String?
    var vagas: Int?
    var carros: [Carro]?
}

struct Carro: Decodable {
    var modelo: String?
    var ano: Int?
    var cor: String?
    var preco: Double?
}

class EstacionamentoView: ObservableObject {
    @Published var estacionamentos: [Estacionamento] = []
    
    func fetch() {
        guard let url = URL(string: "http://127.0.0.1:1880/listarFernanda") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let parsed = try JSONDecoder().decode([Estacionamento].self, from: data)
                DispatchQueue.main.async {
                    self?.estacionamentos.append(contentsOf: parsed)
                }
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}
