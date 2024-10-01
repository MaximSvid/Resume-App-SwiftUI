//
//  HeaderView.swift
//  Lebenslauf
//
//  Created by Maxim Svidrak on 30.09.24.
//

import SwiftUICore

struct HeaderView: View {
    var person: Person
    
    var body: some View {
        CVView(person: person)
    }
    
}
//#Preview {
//    HeaderView(person: Person(image: "myImage", name: "Maxim Svidrak", education: "Android IOS Deweloper", location: "Berlin"))
//}
