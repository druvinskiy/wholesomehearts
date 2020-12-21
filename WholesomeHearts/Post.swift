//
//  Post.swift
//  WholesomeHearts
//
//  Created by David Ruvinskiy on 12/18/20.
//

import Foundation

struct Post: Decodable, Identifiable {
    let id: Int
    let title: Title
}

struct Content: Decodable {
    let rendered: String
    let protected: Bool
}

struct Title: Decodable {
    let rendered: String
}

struct PostResponse: Decodable {
    let request: [Post]
}
