//
//  FooterView.swift
//  FooterView
//
//  Created by Sadık Çoban on 7.09.2021.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10, content: {
            Text("We offer the most  cutting edge, comfortable, lightweight and durable football helmets in the market at affordable prices.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                .foregroundColor(.gray)
                .layoutPriority(0)
            
            Text("Copyright a Robert Petras\nAll right reserved")
                .font(.footnote)
                .bold()
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
            
        })
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
