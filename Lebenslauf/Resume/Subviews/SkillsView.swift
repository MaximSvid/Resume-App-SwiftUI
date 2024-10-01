//
//  SkillsView.swift
//  Lebenslauf
//
//  Created by Maxim Svidrak on 01.10.24.
//

import SwiftUI

struct SkillsView: View {
    let skills: [Skills]
    var body: some View {
        VStack (alignment: .leading) {
            Text("Skills")
                .font(.title2)
                .fontWeight(.bold)
                .padding()
                .padding(.leading, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach (skills, id: \.image) {
                        skill in
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.gray.opacity(0.2))
                                .frame(width: 90, height: 90)
                                .shadow(radius: 5)
                            
                            Image (skill.image)
                                .resizable()
                                .frame(width: 80, height: 80)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .shadow(radius: 5)
                        }
                        .padding(.leading, 10)
                    }
                }
            }
        }
    }
}

//#Preview {
//    SkillsView(skills: [Skills])
//}
