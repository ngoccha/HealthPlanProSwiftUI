//
//  HealthPlanProSwiftUIApp.swift
//  HealthPlanProSwiftUI
//
//  Created by iKame Elite Fresher 2025 on 7/18/25.
//

import SwiftUI

@main
struct HealthPlanProSwiftUIApp: App {
    @StateObject var settingManager = SettingManager()
    @AppStorage("done") var isDoneIntro: Bool = false

    var body: some Scene {
        WindowGroup {
            if isDoneIntro {
                NavigationStack(path: $settingManager.settingPath) {
                    TabHomeView()
                        .onAppear {
                            settingManager.selectedTab = .log
                        }
                        .environmentObject(settingManager)
                }
            } else {
                NavigationStack(path: $settingManager.settingPath) {
                    FirstPageView()
                        .environmentObject(settingManager)
                        .navigationDestination(for: Destination.self) { destination in
                            switch destination {
                            case .profile:
                                ProfileView()
                                    .environmentObject(settingManager)
                            case .information:
                                InformationView()
                                    .environmentObject(settingManager)
                            case .setting:
                                //                            SettingView().environmentObject(settingManager)
                                TabHomeView()
                                    .onAppear {
                                        settingManager.selectedTab = .setting
                                    }
                                    .environmentObject(settingManager)
                            }
                        }
                }
            }
        }
    }
}
