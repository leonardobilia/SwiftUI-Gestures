//
//  ContentView.swift
//  SwiftUI Gestures
//
//  Created by Leonardo Bilia on 6/23/19.
//  Copyright © 2019 Leonardo Bilia. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @State private var viewState = CGSize.zero
    
    var body: some View {
        
        ZStack {
            CardBackView()
                .padding(.top, 60)
                .animation(.spring())
                .offset(y: viewState.height > 100 ? -60 : 0)
                .tapAction { self.viewState = .zero }
            
            CardView()
                .padding(.top, 140)
                .offset(y: viewState.height < 0 ? 0 : viewState.height)
                .animation(.spring())
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            self.viewState = value.translation
                        }
                        .onEnded { value in
                            if self.viewState.height > 200 {
                                self.viewState = CGSize(width: 0, height: 1200)
                            } else {
                                self.viewState = .zero
                            }
                
                    }
                )
            
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
