//
//  FifthView.swift
//  This or That
//
//  Created by scholar on 7/28/23.
//

import SwiftUI

struct FifthView: View {
    @State private var response = ""
    var body: some View {
        NavigationStack{
            VStack{
                Text("Goa or Udaipur?")
                    .font(.title2)
                    .fontWeight(.semibold)
                Button {
                    response = "I don't understand you"
                } label: {
                    Image("goa")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                }
                    .cornerRadius(20)
                    .padding()
                Button {
                    response = "Love ❤️"
                } label: {
                    Image("udaipur")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                }
                .cornerRadius(20)
                
                Text(response)
                NavigationLink(destination: FinishView()) {
                    Text("Finish")
                }
            }
            .padding()
        }
    }
}

struct FifthView_Previews: PreviewProvider {
    static var previews: some View {
        FifthView()
    }
}
