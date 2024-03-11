//
//  TrendingBooks.swift
//  BookRepo
//
//  Created by hanif hussain on 11/03/2024.
//

import Foundation

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let trendingBooks = try? JSONDecoder().decode(TrendingBooks.self, from: jsonData)

import Foundation

// MARK: - TrendingBooks
struct TrendingBooks: Codable {
    let query: String
    let works: [Work]
    let days, hours: Int
}

// MARK: - Work
struct Work: Codable {
    let authorKey, authorName: [String]
    let coverEditionKey: String?
    let coverI, editionCount, firstPublishYear: Int
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

// MARK: - Availability
struct Availability: Codable {
    let status: Status
    let availableToBrowse, availableToBorrow, availableToWaitlist, isPrintdisabled: Bool?
    let isReadable, isLendable: Bool?
    let isPreviewable: Bool?
    let identifier: String
    let isbn: String?
    let oclc: Int?
    let openlibraryWork, openlibraryEdition: String?
    let lastLoanDate: Date?
    let numWaitlist: String?
    let lastWaitlistDate: Date?
    let isRestricted: Bool
    let isBrowseable: Bool?
    let src: Src
    let errorMessage: String?
}

enum Src: String, Codable {
    case coreModelsLendingGetAvailability = "core.models.lending.get_availability"
}

enum Status: String, Codable {
    case borrowAvailable = "borrow_available"
    case error = "error"
    case statusOpen = "open"
    case statusPrivate = "private"
}
