//
//  SettingManager.swift
//  HealthPlanProSwiftUI
//
//  Created by iKame Elite Fresher 2025 on 7/26/25.
//

import SwiftUI
import Foundation

enum Destination: Hashable {
    case setting
    case information
    case profile
}
class SettingManager: ObservableObject {
    @Published var settingPath = NavigationPath()
    @Published var profile: Profile?
   
    init(profile: Profile? = nil) {
            self.profile = profile
        }
    
    func push(destination: Destination) {
        settingPath.append(destination)
    }
    
    func pop() {
        settingPath.removeLast()
    }
    
    func popToRoot() {
        settingPath = NavigationPath()
    }
    
    func saveProfile(_ newProfile: Profile) {
            profile = newProfile
        }
}
