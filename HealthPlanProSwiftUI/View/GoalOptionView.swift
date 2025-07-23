//
//  GoalOption.swift
//  HealthPlanProSwiftUI
//
//  Created by iKame Elite Fresher 2025 on 7/23/25.
//

import SwiftUI

struct GoalOption: View {
    @State private var goToPlanOption = false
    
    @State private var goals = [
        Option(name: "Improve Heart Health", imageName: "icHeartStrong", isSelected: false),
        Option(name: "Improve blood pressure health", imageName: "icHeartPressure", isSelected: false),
        Option(name: "Reduce stress", imageName: "icHarmony", isSelected: false),
        Option(name: "Increase Energy Levels", imageName: "icNoEnergy", isSelected: false)
    ]
    
    var body: some View {
        VStack {
            Text("What would you like to achieve?")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color("Neutral11"))
                .multilineTextAlignment(.center)
                .padding(.horizontal, 33)
                .padding(.bottom, 24)
            
            ScrollView(.vertical, showsIndicators: false) {
                let columns = [
                    GridItem(.adaptive(minimum: 150))
                ]
                LazyVGrid(columns: columns, spacing: 16) {
                    ForEach(0..<goals.count, id: \.self) { item in
                        GridItemView(title: goals[item].name, imageName: goals[item].imageName, isSelected: goals[item].isSelected)
                                .frame(width: (UIScreen.main.bounds.width - 58) / 2, height: 195)
                                .background()
                                .cornerRadius(20)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(goals[item].isSelected ? Color("Primary") : .clear, lineWidth: 1.5)
                                )
                                .onTapGesture {
                                    goals[item].isSelected.toggle()
                                }
                    }
                }
            }
            .padding(.horizontal, 16)
            Spacer()
            ButtonView()
        }
        .padding(.top, 80)
        .background(Color("Background"))
    }
}

#Preview {
    GoalOption()
}
