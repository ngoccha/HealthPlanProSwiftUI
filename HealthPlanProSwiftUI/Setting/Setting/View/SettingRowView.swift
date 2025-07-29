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
        .clipShape(
            .rect (
                topLeadingRadius: isFirst ? 16 : 0,
                bottomLeadingRadius: isLast ? 16 : 0,
                bottomTrailingRadius: isLast ? 16 : 0,
                topTrailingRadius: isFirst ? 16 : 0
            )
        )
        .overlay(
            Group {
                if isFirst && isLast {
                   //ko lam j
                } else if !isLast {
                    Divider()
                        .padding(.leading, 52)
                        .padding(.trailing, 16)
                } else if isFirst {
                    Divider()
                        .padding(.leading, 52)
                        .padding(.trailing, 16)
                }
            },
            alignment: .bottom
        )
        .padding(.bottom, isLast ? 16 : 0)
    }
}

