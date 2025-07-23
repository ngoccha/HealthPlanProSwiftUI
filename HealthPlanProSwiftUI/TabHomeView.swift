//
//  TabView.swift
//  HealthPlanProSwiftUI
//
//  Created by iKame Elite Fresher 2025 on 7/23/25.
//

import SwiftUI

enum Tab {
    case log
    case setting
}

struct TabHomeView: View {
    @State private var isSelectedTab: Tab = .log
    @Binding var logs: [Log]
    var body: some View {
        TabView(selection: $isSelectedTab) {
            HealthGuruView(logs: $logs)
                .tabItem {
                    Image(isSelectedTab == .log ? "icChart" : "icGrayChart")
                    Text("Report")

                }
                .tag(Tab.log)
            
            SettingView()
                .tabItem {
                    Image(isSelectedTab == .setting ? "icSettingSelected" : "icSetting")
                    Text("Settings")
                }
                .tag(Tab.setting)
        }
        .tint(Color("Primary"))
    }
}

#Preview {
    TabHomeView(logs: .constant([
        Log(pulse: 120, hrv: 60)
    ]))
}
