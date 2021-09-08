//
//  TopPartDetailView.swift
//  Touchdown
//
//  Created by Sadık Çoban on 8.09.2021.
//

import SwiftUI

struct TopPartDetailView: View {
    @State private var isAnimating: Bool = false
    @EnvironmentObject var shop: Shop
    var body: some View {
        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 6, content: {
            //price
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Price")
                    .fontWeight(.semibold)
                Text( shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
                    
            })
            .offset(y: isAnimating ? -50 : -75)
            Spacer()
            //photo
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
            
            //hstack
        })
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)){
                isAnimating.toggle()
            }
        })
    }
}

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .environmentObject(Shop())
    }
}
