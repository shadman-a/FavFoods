//
//  PlaceDetail.swift
//  FavFoods
//
//  Created by Shadman Ahmed on 12/25/22.
//

import SwiftUI
import CoreLocation

struct PlaceDetail: View {
    var place: Business

    var body: some View {
        ScrollView {
            MapView(coordinate: CLLocationCoordinate2D(latitude:  40.730_610, longitude: -73.935_242))
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)

            CircleImage(image: AsyncImage(url: URL(string: place.imageUrl )))
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                HStack {
                    Text(place.name)
                        .font(.title)
                        .foregroundColor(.primary)
                }

                HStack {
                    Text(place.price)
                    Spacer()
                    Text(place.displayPhone)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()

                Text("About \(place.name)")
                    .font(.title2)
                Text(place.alias)
            }
            .padding()
        }
        .navigationTitle(place.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

//struct PlaceDetail_Previews: PreviewProvider {
//    static var previews: some View {
//        PlaceDetail()
//    }
//}
