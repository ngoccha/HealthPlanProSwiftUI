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
            NavigationStack(path: $settingManager.settingPath) {
                Group {
                    if isDoneIntro {
                            TabHomeView()
                                .onAppear {
                                    settingManager.selectedTab = .log
                                    let appearance: UITabBarAppearance = {
                                        let app = UITabBarAppearance()
                                        app.configureWithTransparentBackground()
                                
                                        let bgImage = createBackgroundImage()
                                        app.backgroundImage = bgImage
                                        
                                        app.stackedLayoutAppearance.normal.titleTextAttributes = [
                                            .font: UIFont.systemFont(ofSize: 14)
                                        ]
                                        
                                        return app
                                    }()
                                    UITabBar.appearance().standardAppearance = appearance
                                    UITabBar.appearance().scrollEdgeAppearance = appearance
                                    
                                }
                    } else {
                        FirstPageView()
                    }
                }
                .environmentObject(settingManager)
                .navigationDestination(for: Destination.self) { destination in
                    switch destination {
                    case .profile:
                        ProfileView().environmentObject(settingManager)
                    case .information:
                        InformationView().environmentObject(settingManager)
                    case .setting:
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
