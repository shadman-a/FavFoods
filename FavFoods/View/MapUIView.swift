//
//  MapUIView.swift
//  FavFoods
//
//  Created by Shadman Ahmed on 12/26/22.
//

import SwiftUI
import CoreLocationUI
import MapKit

struct MapUIView: View {
    
    @StateObject var locationManager = LocationManager()
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Map(coordinateRegion: $locationManager.region, showsUserLocation: true)
            
            VStack {
                if let location = locationManager.location {
                    Text("**Current location:** \(location.latitude), \(location.longitude)")
                        .font(.callout)
                        .foregroundColor(.white)
                        .padding()
                        .background(.gray)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }

                Spacer()
                LocationButton {
                    locationManager.requestLocation()
                }
                .frame(width: 180, height: 40)
                .cornerRadius(30)
                .symbolVariant(.fill)
                .foregroundColor(.white)
            }
            .padding()
        }
    }
}
