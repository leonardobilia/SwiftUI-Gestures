//
//  CardBackView.swift
//  SwiftUI Gestures
//
//  Created by Leonardo Bilia on 6/23/19.
//  Copyright © 2019 Leonardo Bilia. All rights reserved.
//

import SwiftUI

struct CardBackView : View {
    var body: some View {
        VStack {
            Text("Hello SwiftUI")
                .font(.largeTitle)
                .fontWeight(.black)
                .color(.white)
                .lineLimit(nil)
                .multilineTextAlignment(.center)
            
            Image(systemName: "heart.fill")
                .font(.largeTitle)
                .foregroundColor(Color.white)
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height + 60, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [.pink, .orange]), startPoint: .topLeading, endPoint: .bottomTrailing), cornerRadius: 0)
        .cornerRadius(32)
        .shadow(radius: 20)
        .edgesIgnoringSafeArea(.all)
        .padding(.top, 60)
    }
}

#if DEBUG
struct CardBackView_Previews : PreviewProvider {
    static var previews: some View {
        CardBackView()
    }
}
#endif
