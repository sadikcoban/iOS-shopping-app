//
//  ContentView.swift
//  Touchdown
//
//  Created by Sadık Çoban on 7.09.2021.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Properties
    @EnvironmentObject var shop: Shop
    
    //MARK: - Body
    
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing: 0, content:  {
                    NavbarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.5), radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 5)
                    
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack(spacing: 0.0) {
                            FeaturedTabView()
                                .frame(height: UIScreen.main.bounds.width / 1.475)
                            CategoryGridView()
                            
                        TitleView(title: "Helmet")
                            
                            LazyVGrid(columns: gridLayout, spacing: 15, content: {
                                ForEach(products){product in
                                    ProductItemView(product: product)
                                        .onTapGesture {
                                            feedback.impactOccurred()
                                            withAnimation(.easeOut) {
                                                shop.selectedProduct = product
                                                shop.showingProduct = true
                                            }
                                        }
                                }
                            })
                            .padding(15)
                            
                            BrandGridView()
                            
                            FooterView()
                                .padding(.horizontal)
                        }
                    })
                    
                })
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
            }
        }.ignoresSafeArea(.all,edges: .top)
    }
}

//MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
