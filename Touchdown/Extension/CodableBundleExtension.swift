//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by Sadık Çoban on 7.09.2021.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        //1. Locate the json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        
        //2. create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to locate \(file) from bundle")
        }
        
        //3. creater a decoder
        let decoder = JSONDecoder()
        
        //4. creaete a property for the decoded ddata
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle")
        }
        
        //5. rturn the ready-to-use data
        return decodedData
    }
}
