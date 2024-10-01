//
//  SkillsView.swift
//  Lebenslauf
//
//  Created by Maxim Svidrak on 01.10.24.
//

import SwiftUI

struct SkillsView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.gray.opacity(0.2))
                .frame(width: 80, height: 80)
                .shadow(radius: 5)
                .padding()
        }
    }
}

#Preview {
    SkillsView()
}
