//
//  PostData.swift
//  H4X0R News
//
//  Created by Florian Dreyer on 31.05.21.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}
struct Post: Identifiable, Decodable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
