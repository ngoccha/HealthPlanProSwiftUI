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
    @EnvironmentObject var settingManager: SettingManager
    
    var body: some View {
        TabView(selection: $settingManager.selectedTab) {
            HealthGuruView()
                .tabItem {
                    Image(settingManager.selectedTab == .log ? "icChart" : "icGrayChart")
                    Text("Report")
                }
                .tag(Tab.log)
            
            SettingView()
                .tabItem {
                    Image(settingManager.selectedTab == .setting ? "icSettingSelected" : "icSetting")
                    Text("Settings")
                }
                .tag(Tab.setting)
        }
        .tint(Color("Primary"))
        .environmentObject(settingManager)
    }
}
