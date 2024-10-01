//
//  AboutMe.swift
//  Lebenslauf
//
//  Created by Maxim Svidrak on 01.10.24.
//

import SwiftUI

struct AboutMe: View {
    var person: Person
    var body: some View {
        VStack {
            Text (person.aboutMe)
                .padding()
                
        }
    }
}

#Preview {
    AboutMe(person: Person(image: "person", name: "Maxim Svidrak", education: "Android IOS Deweloper", location: "Berlin", aboutMe: "I am studying at Syntax Institut since the beginning of 2024. I am passionate about native mobile development for Android and iOS."))
}
