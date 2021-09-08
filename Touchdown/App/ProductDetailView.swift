//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Sadık Çoban on 8.09.2021.
//

import SwiftUI

struct ProductDetailView: View {
    @EnvironmentObject var shop: Shop
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            //navbar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            //header
            HeaderDetailView()
                .padding(.horizontal)
            
            //detail top part
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            //detail bottom part
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 0, content: {
                //ratings+sizes
                RatingsSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                
                
                //desc
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                })//:Scroll
                
                //quantity+favoritee
                QuantityFavoriteDetailView()
                    .padding(.vertical, 10)
                
                //add to cart
                AddToCartDetailView()
                    .padding(.bottom, 20)
            })
            .padding(.horizontal)
            .background(Color.white
                            .clipShape(CustomShape()
                            ).padding(.top, -105))
            
        })
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(Color(
                        red: shop.selectedProduct?.red ?? sampleProduct.red,
                        green: shop.selectedProduct?.green ?? sampleProduct.green,
                        blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
        ).ignoresSafeArea(.all,edges: .all)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
            .environmentObject(Shop())
    }
}
