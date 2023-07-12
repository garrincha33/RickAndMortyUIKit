//
//  Episode.swift
//  RickAndMortyUIKit
//
//  Created by Richard Price on 12/07/2023.
//

import Foundation

struct Episode: Codable {
    let info: EpisodeInfo
    let results: [EpisodeResult]
}
struct EpisodeInfo: Codable {
    let count, pages: Int
    let next: String
    let prev: String?
}

struct EpisodeResult: Codable {
    let id: Int
    let name, airDate, episode: String
    let characters: [String]
    let url: String
    let created: String
}

