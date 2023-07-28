//
//  FourthView.swift
//  This or That
//
//  Created by scholar on 7/28/23.
//

import SwiftUI

struct FourthView: View {
    @State private var response = ""
    var body: some View {
        NavigationStack {
            VStack {
                Text("Jalebi or Gulab Jamun")
                    .font(.title2)
                    .fontWeight(.semibold)
                    Button {
                        response = "Slay"
                    } label: {
                        Image("gulab_jamun")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                    }
                    .cornerRadius(30)
                    .padding()
                Button {
                    response = "Yasss queen"
                } label: {
                    Image("jalebi")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                }
                    .cornerRadius(20)
                
                Text(response)
                NavigationLink(destination: FifthView()) {
                    Text("Next")
                }
            }
            .padding()
        }
    }
}

struct FourthView_Previews: PreviewProvider {
    static var previews: some View {
        FourthView()
    }
}
