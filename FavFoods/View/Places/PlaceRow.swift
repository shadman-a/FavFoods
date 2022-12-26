//
//  PlaceRow.swift
//  FavFoods
//
//  Created by Shadman Ahmed on 12/25/22.
//

import SwiftUI

struct PlaceRow: View {
    var place: Business

    var body: some View {
        HStack {
            AsyncImage(url: URL(string: place.imageUrl ))
//                     .resizable()
                     .frame(width: 50, height: 50)
                     .cornerRadius(5)
            Text(place.name)
            
            Spacer()
        }
    }
}

struct PlaceRow_Previews: PreviewProvider {
    static var places = APIManager().places

    static var previews: some View {
        PlaceRow(place: places[0])
    }
}
