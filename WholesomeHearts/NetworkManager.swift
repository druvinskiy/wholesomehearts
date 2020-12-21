//
//  NetworkManager.swift
//  WholesomeHearts
//
//  Created by David Ruvinskiy on 12/18/20.
//

import UIKit

final class NetworkManager {
    static let shared = NetworkManager()
    static let baseURL = "https://wholesomehearts.co/wp-json/wp/v2/"
    private let postURL = baseURL + "posts"
    
    private init() {}
    
    func getPosts(completed: @escaping (Result<[Post], Error>) -> Void) {
        guard let url = URL(string: postURL) else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            if let _ = error {
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                return
            }
            
            guard let data = data else {
                return
            }
            
            if let JSONString = String(data: data, encoding: String.Encoding.utf8) {
                print(JSONString)
            }
        }
        
        task.resume()
    }
}
