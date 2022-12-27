//
//  HomeView.swift
//  FavFoods
//
//  Created by Shadman Ahmed on 12/20/22.
//

import SwiftUI
import CoreLocation
import CoreLocationUI


struct HomeView: View{
    @EnvironmentObject var apiManager: APIManager
    @State public var searchText = ""
    @StateObject var locationManager = LocationManager()

   
  

    
    var body: some View {
        NavigationView {
            List {
                if let location = locationManager.location {
                    Text("**Current location:** \(location.latitude), \(location.longitude)")
                }

                ForEach(apiManager.places) { place in
                    NavigationLink(destination: PlaceDetail(place: place)) {
                        PlaceRow(place: place)
                    }
                }
                   
                }
                 
//            List {
//
//            }
            .navigationTitle("Welcome")
            .searchable(text: $searchText)
            .toolbar {
                LocationButton {
                    locationManager.requestLocation()
                }
                .symbolVariant(.circle)
                .labelStyle(.iconOnly)
                Button {
                    print("hello")
                    
                } label: {
                    Label("User Profile", systemImage: "person.crop.circle")
                }
                
            }
          
                
            }
        }
        
        
    }
        
    
    

