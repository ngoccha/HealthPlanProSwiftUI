//
//  SettingRowView.swift
//  HealthPlanProSwiftUI
//
//  Created by iKame Elite Fresher 2025 on 7/25/25.
//

import SwiftUI

struct SettingRowView: View {
    var settingItem: SettingItem
    var isFirst: Bool = false
    var isLast: Bool = false
    
    var body: some View {
        HStack(spacing: 12) {
            Image(settingItem.iconName)
            Text(settingItem.name)
            Spacer()
            Image("icGoToRight")
        }
        .padding(.vertical, 16)
        .padding(.horizontal, 16)
        .background(Color.white)
        .cornerRadius(isFirst ? 16 : 0)
        .cornerRadius(isLast ? 16 : 0)
        .padding(.bottom, isLast ? 16 : 0)
        
    }
}

