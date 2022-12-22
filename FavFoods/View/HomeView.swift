//
//  HomeView.swift
//  FavFoods
//
//  Created by Shadman Ahmed on 12/20/22.
//

import SwiftUI


struct HomeView: View {
    @State var apiManager = APIManager()
    @State var results = [Business]()
    
    
    var body: some View {
        NavigationView {
            List(results, id: \.id) { item in
                VStack(alignment: .leading) {
                    Text(item.name ?? "cheese")
                }
                    VStack {
                        Text(Date().formatted(.dateTime.weekday(.wide).day().month().year()))
                            .font(.subheadline)
                            .bold()
                    }
                    .navigationTitle("Welcome")
                    .toolbar {
                        Button {
//                            fetchAPI()
                        } label: {
                            Label("User Profile", systemImage: "person.crop.circle")
                        }
                    }
                }
                
                
            }.onAppear(perform: loadData)
        }
        
        
        //    func fetchAPI() {
        //        @State var apiManager = APIManager()
        //        NSLog(apiManager.places.)
        
        
        //        var request = URLRequest(url: URL(string: "https://api.yelp.com/v3/businesses/search?term=delis&latitude=37.786882&longitude=-122.399972")!)
        //        request.httpMethod = "GET"
        //        request.addValue("Bearer jrbL4MFwiYozoWS6K8DavSqnRCotEX57RZdARSA-5tQV15qUVIprv7KxvLJQ4cI1i0MmBQfwJRDgf3femSZv-3Z0L3OAgAPlvWaDfaePKCpL9_GXLdGBAh_h8NmcY3Yx", forHTTPHeaderField: "Authorization")
        //
        //        let session = URLSession.shared
        //        let task = session.dataTask(with: request, completionHandler: { data, response, error -> Void in
        //            print(response!)
        //            do {
        //                let json = try JSONSerialization.jsonObject(with: data!) as! Dictionary<String, AnyObject>
        //            } catch {
        //                print("error")
        //            }
        //        })
        //
        //        task.resume()
        //    }
        
        func loadData() {
            var request = URLRequest(url: URL(string: "https://api.yelp.com/v3/businesses/search?term=delis&latitude=37.786882&longitude=-122.399972")!)
            request.httpMethod = "GET"
            request.setValue("application/json", forHTTPHeaderField:"Content-Type")
            request.setValue("Bearer jrbL4MFwiYozoWS6K8DavSqnRCotEX57RZdARSA-5tQV15qUVIprv7KxvLJQ4cI1i0MmBQfwJRDgf3femSZv-3Z0L3OAgAPlvWaDfaePKCpL9_GXLdGBAh_h8NmcY3Yx", forHTTPHeaderField: "Authorization")
            
            
            URLSession.shared.dataTask(with: request) { (data, response, error) in
                guard let data = data else { return }
                let user = try! JSONDecoder().decode([Business].self, from: data)
                DispatchQueue.main.async {
                    self.results = user
                }
                print("API values fetched Successfully")
            }.resume()
        }
        
        
        struct HomeView_Previews: PreviewProvider {
            static var previews: some View {
                HomeView()
            }
        }
    }

