//
//  SettingView.swift
//  HealthPlanProSwiftUI
//
//  Created by iKame Elite Fresher 2025 on 7/23/25.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Settings")
                .font(.system(size: 32))
                .fontWeight(.semibold)
                .foregroundColor(Color("Neutral1"))
            Image("imageLabelPremium")
                .resizable()
                .scaledToFit()
            List {
                Section {
                    
                }
                Section {
                    
                }
                Section {
                    
                }
            }
        }
        .background(Color("background"))
        .padding(.horizontal, 16)
    }
}

#Preview {
    SettingView()
}
