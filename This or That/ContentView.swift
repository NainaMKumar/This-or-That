//
//  ContentView.swift
//  This or That
//
//  Created by scholar on 7/28/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack {
            VStack {
                Text("Indian This or That 🇮🇳")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 0.562, saturation: 1.0, brightness: 1.0))
                Image("wedding")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
            }//closing vstack
            .padding()
            NavigationLink(destination: SecondView()) {
                Text("Begin")
            }
        }//closing nav stack
        
    }//closing some view
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
