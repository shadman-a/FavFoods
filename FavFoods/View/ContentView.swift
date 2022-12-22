//
//  ContentView.swift
//  FavFoods
//
//  Created by Shadman Ahmed on 12/19/22.
//

import SwiftUI
import MapKit


struct ContentView: View {
    @State private var selection: Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        
        TabView(selection: $selection) {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "fork.knife")
                }
                .tag(Tab.featured)
            MapView(coordinate: CLLocationCoordinate2D(latitude:  40.730_610, longitude: -73.935_242))
                .tabItem {
                    Label("Map", systemImage: "map")
                }
                .tag(Tab.list)
            
            FeaturedView()
                .tabItem {
                    Label("Favorites", systemImage: "star")
                }
                .tag(Tab.list)
            
        }
    }
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
                .environment(\.colorScheme, .dark)
        }
    }
}
