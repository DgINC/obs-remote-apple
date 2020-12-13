//
//  ConnectView.swift
//  obsremote
//
//  Created by Dg on 10.12.2020.
//

import SwiftUI

struct ConnectView: View {
    var body: some View {
        NavigationView {
            List {
                Group {
                    NavigationLink(destination: ContentView()) {
                        Text("Tap me")
                    }
                        .padding(.all)
                        .border(Color.black)
                    Button(action: {
                        
                    }, label: { Text("Text")}).frame(width: 50.0, height: 50.0).border(Color.red)
                }
                NavigationLink(destination: ContentView()) {
                    Text("Tap me")
                }
                    .border(Color.black)
                NavigationLink(destination: ContentView()) {
                    Text("Tap me")
                }
            }
        }
    }
}

struct ConnectView_Previews: PreviewProvider {
    static var previews: some View {
        ConnectView()
    }
}
