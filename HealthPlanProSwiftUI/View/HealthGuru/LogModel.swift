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
    var status: LogStatus {
        switch pulse {
        case 100...:
            return .warning
        case 60...99:
            return .good
        default:
            return .low
        }
    }
}

enum LogStatus: String {
    case good
    case low
    case warning
    
    var statusName: String {
        switch self {
        case .good:
            return "Good"
        case .low:
            return "Low"
        case .warning:
            return "Warning"
        }
    }
    
    var statusColor: String {
        switch self {
        case .good:
            return "good"
        case .low:
            return "low"
        case .warning:
            return "warning"
        }
    }
}
