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

    @State private var isSelectedTab: Tab = .log
    var body: some View {
        NavigationStack(path: $settingManager.settingPath) {
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
                    .environmentObject(settingManager) // ⚠️ PHẢI CÓ DÒNG NÀY

                    .navigationDestination(for: Destination.self) { destination in
                        switch destination {
                        case .profile:
                            ProfileView()
                        case .information:
                            InformationView()
                        case .setting:
                            SettingView()
                        }
                    }
                }
    }
}

//#Preview {
//    TabHomeView(logs: logs)
//}
