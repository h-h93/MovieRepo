//
//  TrendingBooks.swift
//  BookRepo
//
//  Created by hanif hussain on 11/03/2024.
//

//import Foundation
//// MARK: - TrendingBooks
//struct TrendingBooks: Codable {
//    var query: String
//    var works: [Work]
//    var days, hours: Int
//}
//
//// MARK: - Work
//struct Work: Codable {
//    var authorKey, authorName: [String]
//    var coverEditionKey: String?
//    var coverI, editionCount, firstPublishYear: Int?
//    var hasFulltext: Bool
//    var key: String
//    var language: [String]?
//    var publicScanB: Bool
//    var title: String
//    var ia: [String]?
//    var iaCollectionS: String?
//    var availability: Availability?
//    var lendingEditionS, lendingIdentifierS, subtitle: String?
//    var idProjectGutenberg, idLibrivox, idStandardEbooks: [String]?
//}
//
//// MARK: - Availability
//struct Availability: Codable {
//    var status: String
//    var availableToBrowse, availableToBorrow, availableToWaitlist, isPrintdisabled: Bool?
//    var isReadable, isLendable: Bool?
//    var isPreviewable: Bool
//    var identifier: String
//    var isbn: String?
//    var oclc: String?
//    var openlibraryWork, openlibraryEdition: String?
//    var lastLoanDate: Date?
//    var numWaitlist: String?
//    var lastWaitlistDate: Date?
//    var isRestricted: Bool
//    var isBrowseable: Bool?
//    var src: String?
//}


import Foundation

// MARK: - TrendingBooks
struct TrendingBooks: Codable, Hashable {
    let query: String
    let works: [Work]
    let days, hours: Int
}


// MARK: - Work
struct Work: Codable, Hashable {
    let authorKey, authorName: [String]
    let coverEditionKey: String?
    let coverI, editionCount, firstPublishYear: Int?
    let hasFulltext: Bool
    let key: String
    let language: [String]?
    let publicScanB: Bool
    let title: String
    let ia: [String]?
    let iaCollectionS: String?
    let availability: Availability?
    let lendingEditionS, lendingIdentifierS, subtitle: String?
    let idProjectGutenberg, idLibrivox, idStandardEbooks: [String]?
}

//
// Hashable or Equatable:
// The compiler will not be able to synthesize the implementation of Hashable or Equatable
// for types that require the use of JSONAny, nor will the implementation of Hashable be
// synthesized for types that have collections (such as arrays or dictionaries).

// MARK: - Availability
struct Availability: Codable, Hashable {
    let status: String
    let availableToBrowse, availableToBorrow, availableToWaitlist, isPrintdisabled: Bool?
    let isReadable, isLendable: Bool?
    let isPreviewable: Bool
    let identifier: String
    let isbn: String?
    let oclc: String?
    let openlibraryWork, openlibraryEdition: String?
    let lastLoanDate: Date?
    let numWaitlist: String?
    let lastWaitlistDate: Date?
    let isRestricted: Bool
    let isBrowseable: Bool?
    let src: String?
}
