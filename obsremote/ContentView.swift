//
//  ContentView.swift
//  obsremote
//
//  Created by Dg on 08.12.2020.
//

import SwiftUI

struct ContentView: View {
    @State private var isPressed: Bool = false
    @State private var btnRecPressed: Bool = false
    
    private var columns: [GridItem] = [
            GridItem(.fixed(100), spacing: 16),
            GridItem(.fixed(100), spacing: 16),
            GridItem(.fixed(100), spacing: 16)
        ]
    
    var body: some View {
        LazyVGrid(columns: columns, alignment: .center, spacing: 16, pinnedViews: [], content: {
            Section {
                Button(action: {
                    print("Button tapped!")
                }, label: {
                    Image(systemName: "video.circle.fill").font(.title).foregroundColor(.white)
                        .neumorphic(isPressed: $isPressed, bgColor: Color("NewVawe"))
                }).background(Color("NewVawe")).edgesIgnoringSafeArea(.all).cornerRadius(10)
                
                Button(action: {
                    btnRecPressed = true
                }, label: {
                    Image(systemName: "circle.fill").font(.title).foregroundColor(.red)
                        .neumorphic(isPressed: $btnRecPressed, bgColor: Color("NewVawe"))
                }).background(Color("NewVawe")).edgesIgnoringSafeArea(.all).cornerRadius(10)
            }
        })
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
