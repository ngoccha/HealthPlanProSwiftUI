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
    var body: some View {
        TabView(selection: $isSelectedTab) {
            HealthGuruView()
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
        .navigationBarHidden(true)
    }
}

//#Preview {
//    TabHomeView(logs: logs)
//}
