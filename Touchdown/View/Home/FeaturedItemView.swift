//
//  FuturedItemView.swift
//  Touchdown
//
//  Created by Sadık Çoban on 7.09.2021.
//

import SwiftUI

struct FeaturedItemView: View {
    //MARK: - Properties
    let player: Player
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(22)
    }
}

struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
