//
//  Profile.swift
//  HealthPlanProSwiftUI
//
//  Created by iKame Elite Fresher 2025 on 7/26/25.
//


struct Profile: Encodable, Decodable {
    var firstName: String
    var lastName: String
    var bmi: Double
    var weight: Double
    var height: Double
    var gender: String
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
}
