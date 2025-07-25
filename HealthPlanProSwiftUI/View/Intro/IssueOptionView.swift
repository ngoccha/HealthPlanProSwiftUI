//
//  IssueOptionView.swift
//  HealthPlanProSwiftUI
//
//  Created by iKame Elite Fresher 2025 on 7/21/25.
//

import SwiftUI

struct IssueOptionView: View {
    @State private var goToGoalOption = false
    
    @State private var issues = [
        Option(name: "Heart Rate", imageName: "icPulse", isSelected: false),
        Option(name: "High Blood Pressure", imageName: "icHighBlood", isSelected: false),
        Option(name: "Stress & Anxiety", imageName: "icStress", isSelected: false),
        Option(name: "Low Energy Levels", imageName: "icEnergy", isSelected: false)
    ]
    
    var body: some View {
        VStack {
            Text("Which heart health issue concerns you the most?")
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
                    ForEach(0..<issues.count, id: \.self) { item in
                        GridItemView(title: issues[item].name, imageName: issues[item].imageName, isSelected: issues[item].isSelected)
                                .frame(width: (UIScreen.main.bounds.width - 58) / 2, height: 195)
                                .background()
                                .cornerRadius(20)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(issues[item].isSelected ? Color("Primary") : .clear, lineWidth: 1.5)
                                )
                                .onTapGesture {
                                    issues[item].isSelected.toggle()
                                }
                    }
                    .padding(.top, 1)
                }
            }
            .padding(.horizontal, 16)
            Spacer()
            ButtonView(title: "Continue", action: {
                //sth
            })
        }
        .padding(.top, 80)
        .background(Color("Background"))
    }
}

#Preview {
    IssueOptionView()
}
