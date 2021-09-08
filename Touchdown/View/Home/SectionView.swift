//
//  SectionView.swift
//  Touchdown
//
//  Created by Sadık Çoban on 8.09.2021.
//

import SwiftUI

struct SectionView: View {
    @State var rotateClockwise: Bool
    var body: some View {
        VStack {
            Spacer()
            Text("Categories".uppercased())
                .font(.footnote)
                .bold()
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            Spacer()
        }
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockwise: true)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(colorBackground)
    }
}
