//
//  locais.swift
//  mapas
//
//  Created by Student10 on 13/04/23.
//
import MapKit
import Foundation

struct local : Identifiable {
    var id = UUID()
    var nome: String
    var descricao: String
    var foto: String
    var latlong: CLLocationCoordinate2D
}
