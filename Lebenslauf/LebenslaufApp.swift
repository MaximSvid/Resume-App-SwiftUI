import SwiftUI

@main
struct LebenslaufApp: App {
    var body: some Scene {
        WindowGroup {
            let person = Person(image: "person", name: "Maxim Svidrak", education: "Android IOS Deweloper", location: "Berlin", aboutMe: "I am studying at Syntax Institut since the beginning of 2024. I am passionate about native mobile development for Android and iOS.")
            VStack {
                HeaderView(person: person)
                AboutMe(person: person)
            }
           
        }
        
    }
}
//sdfsdfasf

#Preview {
    HeaderView(person: Person(image: "person", name: "Maxim Svidrak", education: "Android IOS Deweloper", location: "Berlin", aboutMe: "I am studying at Syntax Institut since the beginning of 2024. I am passionate about native mobile development for Android and iOS."))
    AboutMe(person: Person(image: "person", name: "Maxim Svidrak", education: "Android IOS Deweloper", location: "Berlin", aboutMe: "I am studying at Syntax Institut since the beginning of 2024. I am passionate about native mobile development for Android and iOS."))
}
