//
//  InfoExperience.swift
//  Lebenslauf
//
//  Created by Maxim Svidrak on 01.10.24.
//

import SwiftUI

struct InfoExperience: View {
    var experiences: [Experience] = [
        Experience (titel: "Self - employed", fromYear: 2019, toYear: 2022, company: "Own Online store"),
        Experience (titel: "Leader", fromYear: 2016, toYear: 2019, company: "Online Store"),
        Experience (titel: "Manager", fromYear: 2013, toYear: 2016, company: "Online Store")
    ]
    var body: some View {
        ZStack(alignment: .topLeading){
            RoundedRectangle (cornerRadius: 10)
                .fill(Color.gray.opacity(0.2))
                .frame(height: 110)
                .shadow(radius: 5)
                .padding()
            
            VStack(alignment: .leading){
                Text("Univer")
                    .padding(.leading, 30)
                    .padding(.top, 90)
                    .fontWeight(.bold)
                Spacer()
            }
            HStack {
                Text("Beruf")
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding([.leading, .top], 30)
                Spacer()
                
                Text("From to")
                    .padding(.trailing, 100)
                    .padding(.top, 30)
            }
            

            
        }
        
    }
}

#Preview {
    InfoExperience()
}
