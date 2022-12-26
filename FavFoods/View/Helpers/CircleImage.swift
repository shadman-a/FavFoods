//
//  CircleImage.swift
//  FavFoods
//
//  Created by Shadman Ahmed on 12/25/22.
//

import SwiftUI

struct CircleImage: View {
    var image: AsyncImage<Image>
    
    var body: some View {
        image
            .frame(width:200, height:200)
            .clipShape(Rectangle())
            .overlay(Rectangle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

//struct CircleImage_Previews: PreviewProvider {
//    static var previews: some View {
//        CircleImage()
//    }
//}
