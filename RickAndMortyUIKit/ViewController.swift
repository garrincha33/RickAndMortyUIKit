//
//  ViewController.swift
//  RickAndMortyUIKit
//
//  Created by Richard Price on 10/07/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        let request = APIRequest(endPoint: .character, pathComponents: ["1"], queryParams: [URLQueryItem(name: "name", value: "rick"),
             URLQueryItem(name: "status", value: "alive")
            ])
        print(request.url)
    }
}

