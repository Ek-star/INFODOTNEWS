//
//  ContentView.swift
//  H4X0R
//
//  Created by EKALMA TOTO ALLOY SEMBIRING on 04/06/25.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                HStack {
                    Text(String(post.points))
                    Text(post.title)
                }
            }
            .navigationBarTitle("H4X0R NEWS")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

#Preview {
    ContentView()
}

//let posts = [
//    Post(id: "1", title: "Hello!"),
//    Post(id: "2", title: "Bonjour!"),
//    Post(id: "3", title: "Hola!")
//]
