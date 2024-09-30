//
//  CVView.swift
//  Lebenslauf
//
//  Created by Maxim Svidrak on 30.09.24.
//

import SwiftUI

struct CVView: View {
    var body: some View {
        HStack (alignment: .top) {
            Image("myImage")
                .frame(width: 120, height: 120)
                .background(.gray)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(radius: 5)
            VStack(alignment: .leading) {
                Text("Maxim Svidrak")
                    .font(.title)
                    .fontWeight(.bold)
                Text("Android IOS Deweloper")
                    .font(.body)
                HStack {
                    Image(systemName: "location.fill")
                        .foregroundColor(.blue)
                    Text ("Berlin")
                        .fontWeight(.light)
                    Spacer()
                }
                Button (action: {
                    print("Button tapped!")
                }) {
                    Text("Contact Me")
                        .font(.body)
                        .frame(minWidth: 150, minHeight: 30)
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                                            
                }
                Spacer()
            }
            .padding(.leading)
        }
        .padding([.top , .leading], 10)
        
    }
}

#Preview {
    CVView()
}
