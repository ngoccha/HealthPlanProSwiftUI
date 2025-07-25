//
//  FirstPageView.swift
//  HealthPlanProSwiftUI
//
//  Created by iKame Elite Fresher 2025 on 7/18/25.
//

import SwiftUI

struct FirstPageView: View {
    @State private var goToIssueOption = false
    var body: some View {
        NavigationStack {
            VStack {
                Text("Health Plan Pro")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color("Neutral1"))
                    .padding(.top, 36)
                    .padding(.bottom, 6)
                Text("Providing workout routines and health information to support well-being.")
                    .fontWeight(.medium)
                    .foregroundColor(Color("Neutral3"))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 24)
                Spacer()
                Image("GroupPhoneImage")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal, 30)
                Spacer()
                ButtonView(title: "Continue", action: {
                    //sth
                })
            }
            .background(Color("Background"))
        }
    }
}

#Preview {
    FirstPageView()
}
