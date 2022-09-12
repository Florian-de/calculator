//
//  ContentView.swift
//  H4X0R News
//
//  Created by Florian Dreyer on 31.05.21.
//

import SwiftUI

struct ContentView: View {
   @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(
                    destination: DetailView(url: post.url)) {
                        HStack {
                            Text(String(post.points))
                            Text(post.title)
                            
                        }
                        
                    }
                
                
            }
            .navigationBarTitle("H4X0R News")
        }
        .onAppear(perform: {
            self.networkManager.fatchData()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice("iPhone 12")
    }
}


