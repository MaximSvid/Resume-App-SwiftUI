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

//#Preview {
//    AboutMe(person: person)
//}
