//
//  APIService.swift
//  RickAndMortyUIKit
//
//  Created by Richard Price on 12/07/2023.
//

import Foundation

final class APIService {
    static let shared = APIService()
    
    private init() {}
    
    public func execute(_ request: APIRequest, completion: @escaping () -> Void) {
        
    }
}
