//
//  TitleView.swift
//  Touchdown
//
//  Created by Sadık Çoban on 8.09.2021.
//

import SwiftUI

struct TitleView: View {
    var title: String
    var body: some View {
        HStack(content: {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            Spacer()
        })
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmets")
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
