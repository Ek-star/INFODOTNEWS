//
//  PostData.swift
//  H4X0R
//
//  Created by EKALMA TOTO ALLOY SEMBIRING on 04/06/25.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String
}
