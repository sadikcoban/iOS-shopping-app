//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Sadık Çoban on 8.09.2021.
//

import SwiftUI

struct ProductItemView: View {
    let product: Product
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            //photo
            ZStack{
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            //name
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            //price
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
            
            
        })
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .background(colorBackground)
            .padding()
    }
}
