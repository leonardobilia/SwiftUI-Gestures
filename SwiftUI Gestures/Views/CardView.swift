//
//  CardView.swift
//  SwiftUI Gestures
//
//  Created by Leonardo Bilia on 6/23/19.
//  Copyright © 2019 Leonardo Bilia. All rights reserved.
//

import SwiftUI

struct CardView : View {
    var body: some View {
        VStack {
            HStack {
                Text("Build an Drag Gesture app with SwiftUI")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .color(.white)
                    .padding(EdgeInsets(top: 64, leading: 24, bottom: 32, trailing: UIScreen.main.bounds.width * 0.3))
                    .lineLimit(nil)
                    .multilineTextAlignment(.leading)
            }
            
            Spacer()
            
            Image(systemName: "arrowtriangle.down.circle.fill")
                .font(.system(size: 48))
                .foregroundColor(Color.white)
            
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [.blue, .green]), startPoint: .topLeading, endPoint: .bottomTrailing), cornerRadius: 0)
        .cornerRadius(32)
        .shadow(radius: 20)
        .edgesIgnoringSafeArea(.all)
    }
}

#if DEBUG
struct CardView_Previews : PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
#endif
