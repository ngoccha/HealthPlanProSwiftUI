//
//  SettingModel.swift
//  HealthPlanProSwiftUI
//
//  Created by iKame Elite Fresher 2025 on 7/25/25.
//

import Foundation

enum SettingItem {
    case profile
    case reminder
    case icon
    case language
    case rate
    case feeback
    case privacy
    case term
    
    var name: String {
        switch self {
        case .profile:
            return "Profile"
        case .reminder:
            return "Daily Reminder"
        case .icon:
            return "Change App Icon"
        case .language:
            return "Language"
        case .rate:
            return "Rate Us"
        case .feeback:
            return "Feedback"
        case .privacy:
            return "Privacy Policy"
        case .term:
            return "Terms of user"
        }
    }
    
    var iconName: String {
        switch self {
        case .profile:
            return "icProfile"
        case .reminder:
            return "icReminder"
        case .icon:
            return "icCategory"
        case .language:
            return "icGlobe"
        case .rate:
            return "icLike"
        case .feeback:
            return "icMessage"
        case .privacy:
            return "icShieldStar"
        case .term:
            return "icDocument"
        }
    }
}
