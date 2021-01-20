//
//  ContentView.swift
//  SearchBar
//
//  Created by Joep Hinderink on 20/01/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var text = ""
    
    var body: some View {
        VStack {
            SearchBar(text: $text)
            
            List((0 ..< 20).filter({ "\($0)".contains(text) || text.isEmpty}), id: \.self) {  i in
                Text("\(i)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
