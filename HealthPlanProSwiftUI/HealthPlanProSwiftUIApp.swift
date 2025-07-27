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

    var body: some Scene {
        WindowGroup {
            FirstPageView()
                .environmentObject(settingManager)

//            TabHomeView()
//                .onAppear(){
//                  let appearance: UITabBarAppearance = {
//                    let app = UITabBarAppearance()
//                    app.stackedLayoutAppearance.normal.titleTextAttributes = [
//                      .font: UIFont.systemFont(ofSize: 14)
//                    ]
//                    return app
//                  }()
//                  UITabBar.appearance().scrollEdgeAppearance = appearance
//                }
        }
    }
}
