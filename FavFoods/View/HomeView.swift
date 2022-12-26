//
//  HomeView.swift
//  FavFoods
//
//  Created by Shadman Ahmed on 12/20/22.
//

import SwiftUI


struct HomeView: View{
    @EnvironmentObject var apiManager: APIManager
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            List {
                ForEach(apiManager.places) { place in
                    NavigationLink(destination: PlaceDetail(place: place)) {
                        PlaceRow(place: place)
                    }
                }
            }
                    .navigationTitle("Welcome")
                    .searchable(text: $searchText)
                    .toolbar {
                        Button {
                            self.loopnprint()
                        } label: {
                            Label("User Profile", systemImage: "person.crop.circle")
                        }
                    }
            
            }
        }
        
    func loopnprint() {
        print("signed in")
    }
        
}

