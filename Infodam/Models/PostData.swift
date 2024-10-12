//
//  PostData.swift
//  Infodam
//
//  Created by Adam Daris Ryadhi on 11/10/24.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String { objectID }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
