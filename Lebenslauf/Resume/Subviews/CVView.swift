//
//  CVView.swift
//  Lebenslauf
//
//  Created by Maxim Svidrak on 30.09.24.
//

import SwiftUI

struct CVView: View {
    var person: Person

    
    var body: some View {
        HStack (alignment: .top) {
            Image(person.image)
                .resizable()
                .frame(width: 130, height: 120)
                .background(.gray)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(radius: 5)
            VStack(alignment: .leading) {
                Text(person.name)
                    .font(.title)
                    .fontWeight(.bold)
                Text(person.education)
                    .font(.body)
                HStack {
                    Image(systemName: "location.fill")
                        .foregroundColor(.blue)
                    Text (person.location)
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
        .padding([.top , .leading], 15)
        
    }
}
//    var experience: Experience


#Preview {
    CVView(person: Person(image: "person", name: "Maxim Svidrak", education: "Android IOS Deweloper", location: "Berlin", aboutMe: ""))
}
