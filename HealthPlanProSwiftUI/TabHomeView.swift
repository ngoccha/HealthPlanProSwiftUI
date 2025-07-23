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
    @State var isSelectedTab: Tab = .log

    var body: some View {
        TabView(selection: $isSelectedTab) {
            Tab("Received", systemImage: "tray.and.arrow.down.fill", value: .log) {
                   HealthGuruView()
               }


            Tab("Sent", systemImage: "tray.and.arrow.up.fill", value: .setting) {
                   SettingView()
               }
        }
    }
}

#Preview {
    TabHomeView()
}
