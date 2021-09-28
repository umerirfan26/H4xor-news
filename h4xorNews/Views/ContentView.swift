//
//  ContentView.swift
//  h4xor news
//
//  Created by Muhammad Umer on 31/07/2021.
//  Copyright © 2021 Muhammad Umer. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager  = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
            }
            .navigationBarTitle("H4XOR NEWS")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
