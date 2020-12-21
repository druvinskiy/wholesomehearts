//
//  ContentView.swift
//  WholesomeHearts
//
//  Created by David Ruvinskiy on 12/18/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
            .onAppear() {
                NetworkManager.shared.getPosts() { posts in
                    
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
