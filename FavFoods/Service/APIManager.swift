//
//  APIManager.swift
//  FavFoods
//
//  Created by Shadman Ahmed on 12/21/22.
//

import Foundation
import Combine
import SwiftUI

class APIManager: ObservableObject {
    var didChange = PassthroughSubject<Void,Never>()
//    @Published var places = [Business]{
//        didSet {
//            didChange.send(())
//        }
    }
    
//    init() {
//        var request = URLRequest(url: URL(string: "https://api.yelp.com/v3/businesses/search?term=delis&latitude=37.786882&longitude=-122.399972")!)
//        request.httpMethod = "GET"
//        request.setValue("application/json", forHTTPHeaderField:"Content-Type")
//        request.setValue("Bearer jrbL4MFwiYozoWS6K8DavSqnRCotEX57RZdARSA-5tQV15qUVIprv7KxvLJQ4cI1i0MmBQfwJRDgf3femSZv-3Z0L3OAgAPlvWaDfaePKCpL9_GXLdGBAh_h8NmcY3Yx", forHTTPHeaderField: "Authorization")
//
//
//        URLSession.shared.dataTask(with: request) { (data, response, error) in
//            guard let data = data else { return }
//            let user = try! JSONDecoder().decode([Business].self, from: data)
//            DispatchQueue.main.async {
//                self.results = user
//            }
//            print("API values fetched Successfully")
//            }.resume()
//    }
    
//}
