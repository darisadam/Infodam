//
//  ContentView.swift
//  Infodam
//
//  Created by Adam Daris Ryadhi on 11/10/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
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
            .navigationTitle("Hacker News")
        }
        .onAppear {
            networkManager.fetchData()
        }
    }
}

#Preview {
    ContentView()
}
