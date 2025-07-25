//
//  SettingView.swift
//  HealthPlanProSwiftUI
//
//  Created by iKame Elite Fresher 2025 on 7/23/25.
//

import SwiftUI

struct SettingView: View {
    let section2 = [SettingItem.reminder, SettingItem.icon, SettingItem.language]
    let section3 = [SettingItem.rate, SettingItem.feeback, SettingItem.privacy, SettingItem.term]
    
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
                Section {
                    SettingRowView(settingItem: SettingItem.profile)
                        .listRowInsets(EdgeInsets())
                        .cornerRadius(12)
                        .padding(.bottom, 16)
                }
                .background(Color("Background"))

                Section {
                    ForEach(0..<section2.count, id: \.self) { index in
                        let item = section2[index]
                        SettingRowView(
                            settingItem: item,
                            isFirst: index == 0,
                            isLast: index == section2.count - 1
                        )
                        .listRowInsets(EdgeInsets())
                    }
                }
                .background(Color("Background"))
                
                Section {
                    ForEach(0..<section3.count, id: \.self) { index in
                        let item = section3[index]
                        SettingRowView(
                            settingItem: item,
                            isFirst: index == 0,
                            isLast: index == section3.count - 1
                        )
                            .listRowInsets(EdgeInsets())
                    }
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
