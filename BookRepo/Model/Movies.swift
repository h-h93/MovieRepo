// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let trendingMovies = try? JSONDecoder().decode(TrendingMovies.self, from: jsonData)

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

import Foundation

// MARK: - Movies
struct Result: Codable, Hashable {
    let page: Int
    let results: [Movies]
    let totalPages, totalResults: Int
    
    enum CodingKeys: String, CodingKey {
        case page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - Result
struct Movies: Codable, Hashable {
    let adult: Bool?
    let backdropPath: String?
    let genreIDS: [Int]?
    let id: Int?
    let originalLanguage: String?
    let originalTitle, overview: String?
    let popularity: Double?
    let posterPath, releaseDate, title: String?
    let video: Bool?
    let voteAverage: Double?
    let voteCount: Int?
    
    enum CodingKeys: String, CodingKey {
            case adult
            case backdropPath = "backdrop_path"
            case genreIDS = "genre_ids"
            case id
            case originalLanguage = "original_language"
            case originalTitle = "original_title"
            case overview, popularity
            case posterPath = "poster_path"
            case releaseDate = "release_date"
            case title, video
            case voteAverage = "vote_average"
            case voteCount = "vote_count"
        }
}


struct GenreList {
    let genres: [(id: Int, name: String)] = [
        (id: 28, name: "Action"),
        (id: 12, name: "Adventure"),
        (id: 16, name: "Animation"),
        (id: 35, name: "Comedy"),
        (id: 80, name: "Crime"),
        (id: 99, name: "Documentary"),
        (id: 18, name: "Drama"),
        (id: 10751, name: "Family"),
        (id: 14, name: "Fantasy"),
        (id: 36, name: "History"),
        (id: 27, name: "Horror"),
        (id: 10402, name: "Music"),
        (id: 9648, name: "Mystery"),
        (id: 10749, name: "Romance"),
        (id: 878, name: "Science Fiction"),
        (id: 10770, name: "TV Movie"),
        (id: 53, name: "Thriller"),
        (id: 10752, name: "War"),
        (id: 37, name: "Western")
    ]
}

// MARK: - MovieTrailerLinks
struct MovieTrailerLinks: Codable {
    let id: Int
    let results: [MovieTrailerLinksResult]
}

// MARK: - Result
struct MovieTrailerLinksResult: Codable {
    let iso639_1, iso3166_1, name, key: String
    let site: String
    let size: Int
    let type: String
    let official: Bool
    let publishedAt, id: String

    enum CodingKeys: String, CodingKey {
        case iso639_1 = "iso_639_1"
        case iso3166_1 = "iso_3166_1"
        case name, key, site, size, type, official
        case publishedAt = "published_at"
        case id
    }
}




