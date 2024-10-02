//
//  CVView.swift
//  Lebenslauf
//
//  Created by Maxim Svidrak on 30.09.24.
//

import SwiftUI

struct CVView: View {
    var person: Person
    let skills: [Skills]
    let experiense: [Experience]
    let education: [MyEducation]
    var body: some View {
        HeaderView(person: person)
        AboutMe(person: person)
        SkillsView(skills: skills)
        InfoExperience(experiences: experiense)
        EducationView(education: education)
    }
        
}
  



#Preview {
    let person = Person(image: "person", name: "Maxim Svidrak", education: "Android IOS Deweloper", location: "Berlin", aboutMe: "I am studying at Syntax Institut since the beginning of 2024. I am passionate about native mobile development for Android and iOS.")
    let skills = [
        Skills(image: "figma"),
        Skills(image: "xcode"),
        Skills(image: "ios"),
        Skills(image: "android"),
        Skills(image: "uikit"),
        Skills(image: "swiftUI"),
        Skills(image: "jetpackCompose")
    ]
    
    let experiences: [Experience] = [
        Experience(titel: "Self - employed", fromYear: "2019", toYear: "2022", company: "Own Online store"),
        Experience(titel: "Leader", fromYear: "2016", toYear: "2019", company: "Online Store"),
        Experience(titel: "Manager", fromYear: "2013", toYear: "2016", company: "Online Store")
    ]
    
    let education: [MyEducation] = [
        MyEducation(titel: "Mechanical engineering", fromYear: "2010", toYear: "2013", company: "Polytechnic University"),
        MyEducation(titel: "Manufacturing of CNC", fromYear: "2006", toYear: "2010", company: "Technical School")
    ]
    
    ScrollView {
        VStack {
            CVView(person: person, skills: skills, experiense: experiences, education: education)
        }
    }
}

