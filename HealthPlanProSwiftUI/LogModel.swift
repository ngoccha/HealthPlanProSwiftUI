//
//  LogModel.swift
//  HealthPlanProSwiftUI
//
//  Created by iKame Elite Fresher 2025 on 7/23/25.
//

import Foundation

struct Log {
    var pulse: Int
    var hrv: Int
    var status: String {
        switch pulse {
        case 100...:
            return "Warning"
        case 60...99:
            return "Good"
        default:
            return "Low"
        }
    }
}

enum LogStatus: String {
    case good
    case low
    case warning
}
