//
//  SettingView.swift
//  HealthPlanProSwiftUI
//
//  Created by iKame Elite Fresher 2025 on 7/23/25.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Settings")
                .font(.system(size: 32))
                .fontWeight(.semibold)
                .foregroundColor(Color("Neutral1"))
            Image("imageLabelPremium")
                .resizable()
                .scaledToFit()
            List {
                Group {
//                    SettingRowView(settingItem: <#SettingItem#>)
//                        .listRowInsets(EdgeInsets())
                }
                .padding(.bottom, 16)
                .background(Color("Background"))
                Group {
//                    SettingRowView(settingItem: <#SettingItem#>)
//                        .listRowInsets(EdgeInsets())
                }
                .background(Color("Background"))
            }
            .listStyle(.plain)
            .background(Color("Background"))
        }
        .padding(.horizontal, 16)
        .background(Color("Background"))
    }
}

#Preview {
    SettingView()
}
