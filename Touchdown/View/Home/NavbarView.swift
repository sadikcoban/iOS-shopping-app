//
//  NavbarView.swift
//  Touchdown
//
//  Created by Sadık Çoban on 7.09.2021.
//

import SwiftUI

struct NavbarView: View {
    
    //MARK: - Properties
    @State private var isAnimated: Bool = false
    //MARK: - Body
    
    var body: some View {
        HStack(content: {
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "magnifyingglass")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.black)
            })
            Spacer()
            
            LogoView()
                .opacity(isAnimated ? 1: 0)
                .offset(x: 0, y: isAnimated ? 0 : -25)
                .onAppear(perform: {
                    withAnimation(.easeOut(duration: 0.5)){
                        isAnimated.toggle()
                    }
                })
            
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.black)
                    Circle()
                        .fill(Color.red)
                        .frame(width: 14, height: 14, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .offset(x: 13, y: -10)
                }
            })
        })
    }
}

struct NavbarView_Previews: PreviewProvider {
    static var previews: some View {
        NavbarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
