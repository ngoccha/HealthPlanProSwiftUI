//
//  PlanOptionView.swift
//  HealthPlanProSwiftUI
//
//  Created by iKame Elite Fresher 2025 on 7/21/25.
//

import SwiftUI

struct PlanOptionView: View {
    @State private var goToSetting = false
    
    @State private var plans = [
        Option(name: "Educational Plan", imageName: "icPlanApple", isSelected: false),
        Option(name: "Exercise Plan", imageName: "icPlanStrong", isSelected: false),
        Option(name: "Health Tests", imageName: "icPlanTest", isSelected: false),
    ]
    
    var body: some View {
        VStack {
            Text("What type of plan would you like to follow?")
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
                    ForEach(0..<plans.count, id: \.self) { item in
                        GridItemView(title: plans[item].name, imageName: plans[item].imageName, isSelected: plans[item].isSelected)
                                .frame(width: (UIScreen.main.bounds.width - 58) / 2, height: 195)
                                .background()
                                .cornerRadius(20)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(plans[item].isSelected ? Color("Primary") : .clear, lineWidth: 1.5)
                                )
                                .onTapGesture {
                                    plans[item].isSelected.toggle()
                                }
                    }
                    .padding(.top, 1)
                }
            }
            .scrollDisabled(true)
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
    PlanOptionView()
}
