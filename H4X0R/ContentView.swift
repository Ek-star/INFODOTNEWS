//
//  ContentView.swift
//  H4X0R
//
//  Created by EKALMA TOTO ALLOY SEMBIRING on 04/06/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(posts) { post in
                Text(post.title)
            }
            .navigationBarTitle("H4X0R NEWS")
        }
    }
}

#Preview {
    ContentView()
}

let posts = [
    Post(id: "1", title: "Hello!"),
    Post(id: "2", title: "Bonjour!"),
    Post(id: "3", title: "Hola!")
]
