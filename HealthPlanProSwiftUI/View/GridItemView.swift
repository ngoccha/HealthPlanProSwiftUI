//
//  GridItemView.swift
//  HealthPlanProSwiftUI
//
//  Created by iKame Elite Fresher 2025 on 7/21/25.
//

import SwiftUI

struct GridItemView: View {
    var title: String
    var imageName: String
    var isSelected: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(isSelected ? "icSquareTicked" : "icSquare")                    .padding(.top, 16)
                .padding(.leading, 13)
                .padding(.bottom, 8)
            Image(imageName)
                .padding(.horizontal, 50)
//                .padding(.bottom, 39)
            Spacer()
            Text(title)
                .fontWeight(.regular)
                .font(.system(size: 18))
                .multilineTextAlignment(.leading)
                .foregroundColor(Color("Neutral2"))
                .padding(.bottom, 16)
                .padding(.horizontal, 16)
                .fixedSize(horizontal: false, vertical: true) // Cho
        }
    }
}

#Preview {
    GridItemView(title: "Heart Rate555555555555555555555555555577777777777777777777777777777777777", imageName: "icPulse", isSelected: true)
}
