//
//  Character.swift
//  RickAndMortyUIKit
//
//  Created by Richard Price on 12/07/2023.
//

import Foundation

struct Character: Codable {
    let info: CharacterInfo
    let results: [CharacterResult]
}
struct CharacterInfo: Codable {
    let count, pages: Int
    let next: String
    let prev: String?
}

struct CharacterResult: Codable {
    let id: Int
    let name: String
    let status: Status
    let species: Species
    let type: String
    let gender: CharacterGender
    let origin, location: Location
    let image: String
    let episode: [String]
    let url: String
    let created: String
}

enum CharacterGender: String, Codable {
    case female
    case male
    case unknown
}

// MARK: - Location
struct Location: Codable {
    let name: String
    let url: String
}

enum Species: String, Codable {
    case alien
    case human
}

enum Status: String, Codable {
    case alive
    case dead
    case unknown
}
