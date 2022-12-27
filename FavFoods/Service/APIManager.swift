//
//  APIManager.swift
//  FavFoods
//
//  Created by Shadman Ahmed on 12/21/22.
//

import Foundation
import Combine
import SwiftUI
import CoreLocation


class APIManager: ObservableObject {
    var didChange = PassthroughSubject<Void,Never>()
    @Published var places = [Business]()
    @StateObject var locationManager = LocationManager()

    
    
    init()   {
        var request = URLRequest(url: URL(string: "https://api.yelp.com/v3/businesses/search?term=delis&latitude=37.786882&longitude=-122.399972")!)
        request.httpMethod = "GET"
        request.setValue("application/json", forHTTPHeaderField:"Content-Type")
        request.setValue("Bearer jrbL4MFwiYozoWS6K8DavSqnRCotEX57RZdARSA-5tQV15qUVIprv7KxvLJQ4cI1i0MmBQfwJRDgf3femSZv-3Z0L3OAgAPlvWaDfaePKCpL9_GXLdGBAh_h8NmcY3Yx", forHTTPHeaderField: "Authorization")
        
        let session = URLSession.shared
        
        
        
        let dataTask = session.dataTask(with: request) { data, response, error in
                        if error == nil {
                do {
                    // Parse json
                    let decoder = JSONDecoder()
                    let result = try decoder.decode(BusinessSearch.self, from: data!)
                    DispatchQueue.main.async {
                        // Assign results to the appropriate property
                        
                        
                        self.places = result.businesses
                        
                       
                        
                    }
                    
                    // Call the getImage function of the businesses
                    
                    
                }
                catch {
                    print("Error parsing JSON")
                    print(error)
                }
            }
            
            
        }
       
        dataTask.resume()
    }
}
                    
           

        
     
