//
//  InfoExperience.swift
//  Lebenslauf
//
//  Created by Maxim Svidrak on 01.10.24.
//

import SwiftUI

struct InfoExperience: View {
    let experiences: [Experience]
    
    var body: some View {
        
        VStack (alignment: .leading) {
            Text("Work Experience")
                .font(.title2)
                .fontWeight(.bold)
                .padding()
            
            
            VStack(alignment: .leading, spacing: 10) { // Добавлено расстояние между элементами
                ForEach(experiences, id: \.titel) { experience in
                    VStack(alignment: .leading) {
                        Text(experience.titel)
                            .fontWeight(.bold)
                            .font(.title3)
                            .fontWeight(.bold)
                            .padding(.leading, 15)
                        
                        HStack {
                            Text(experience.company)
                                .padding(.leading, 15)
                            Spacer()
                            
                            Text("\(experience.fromYear) - \(experience.toYear)")
                                .padding(.trailing, 15)
                        }
                        .padding(.top, 5)
                    }
                    .padding(.horizontal) // Паддинг по горизонтали для каждой карточки
                    .frame(height: 90) // Высота для каждого элемента
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color.gray.opacity(0.2)))
                    .padding(5) // Паддинг между элементами
                }
            }
            .padding(5) // Паддинг сверху для всей VStack
        }
    }
}

//#Preview {
//    InfoExperience(experiences: )
//}
