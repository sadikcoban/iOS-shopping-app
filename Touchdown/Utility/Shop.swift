//
//  Shop.swift
//  Touchdown
//
//  Created by Sadık Çoban on 8.09.2021.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
