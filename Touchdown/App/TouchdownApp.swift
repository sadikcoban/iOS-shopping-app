//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Sadık Çoban on 7.09.2021.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
