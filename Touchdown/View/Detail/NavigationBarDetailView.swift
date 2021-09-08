//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Sadık Çoban on 8.09.2021.
//

import SwiftUI

struct NavigationBarDetailView: View {
    @EnvironmentObject var shop: Shop
    var body: some View {
        HStack(content: {
            Button(action: {
                withAnimation(.easeIn) {
                    feedback.impactOccurred()
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(Color.white)
            })
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(Color.white)
            })
        })
    }
}

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
