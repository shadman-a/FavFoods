//
//  Places.swift
//  FavFoods
//
//  Created by Shadman Ahmed on 12/20/22.
//

import Foundation

struct Business: Codable, Identifiable {
    let id: String?
    let name: String?
    let price: String?
    let distance: Double?
    let imageUrl: String?
    let categories: [Categories]?
    let coordinates: Coordinates?
    let url: String?
    let phone: String?
}

struct Categories: Codable {
    let alias: String?
    let title: String?
}

struct Coordinates: Codable {
    let latitude: Double?
    let longitude: Double?
}

