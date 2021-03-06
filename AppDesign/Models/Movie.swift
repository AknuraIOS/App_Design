//
//  Movie.swift
//  AppDesign
//
//  Created by Акнур on 1/18/21.
//  Copyright © 2021 Акнур. All rights reserved.
//

import Foundation
struct Movie : Codable {
    let page : Int?
    let total_results : Int?
    let total_pages : Int?
    let results : [Results]?

    enum CodingKeys: String, CodingKey {
        case page = "page"
        case total_results = "total_results"
        case total_pages = "total_pages"
        case results = "results"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        page = try values.decodeIfPresent(Int.self, forKey: .page)
        total_results = try values.decodeIfPresent(Int.self, forKey: .total_results)
        total_pages = try values.decodeIfPresent(Int.self, forKey: .total_pages)
        results = try values.decodeIfPresent([Results].self, forKey: .results)
    }

}
