//
//  NetworkManager.swift
//  BookRepo
//
//  Created by hanif hussain on 10/03/2024.
//

import UIKit

enum baseUrls: String {
    case trending = "https://openlibrary.org/trending/daily.json"
}

class NetworkManager {
    static let shared = NetworkManager()
    private let decoder = JSONDecoder()
    
    
    func getTrending() async throws {
        guard let url = URL(string: baseUrls.trending.rawValue) else { return }
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else { return }
        
        do {
            let trending = try decoder.decode(TrendingBooks.self, from: data)
            print(trending)
        } catch {
            print("error decoding")
        }
    }
    
}

// don't forget to do error screen
