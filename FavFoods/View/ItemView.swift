//
//  ItemView.swift
//  FavFoods
//
//  Created by Shadman Ahmed on 12/25/22.
//

import SwiftUI

struct ItemView: View {
    var item: String
    var pic: String
    
    
    var body: some View {
           VStack(alignment: .leading) {
               AsyncImage(url: URL(string: pic))
//                   .renderingMode(.original)
//                   .resizable()
                   .frame(width: 155, height: 155)
                   .cornerRadius(5)
               Text(item)
                   .foregroundColor(.primary)
                   .font(.caption)
           }
           .padding(.leading, 15)
       }
}

//struct ItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        ItemView()
//    }
//}
