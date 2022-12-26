//
//  BusinessSearch.swift
//  FavFoods
//
//  Created by Shadman Ahmed on 12/25/22.
//

import Foundation

struct BusinessSearch: Decodable {
    
    var businesses = [Business]()
    
    var total = 0
    
    var region = Region()
}


struct Region: Decodable {
    var center = Coordinate()
}
