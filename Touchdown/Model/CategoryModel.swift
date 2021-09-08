//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Sadık Çoban on 7.09.2021.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
