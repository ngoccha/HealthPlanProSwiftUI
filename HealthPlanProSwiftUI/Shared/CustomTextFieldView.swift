//
//  CustomTextFieldView.swift
//  HealthPlanProSwiftUI
//
//  Created by iKame Elite Fresher 2025 on 7/29/25.
//

import SwiftUI

struct CustomTextFieldView: View {
    @Binding var text: String
    var placeholder: String
    
    var body: some View {
        TextField("\(placeholder)", text: $text)
            .padding(.leading, 12)
            .frame(height: 52)
            .font(.body)
            .background(Color.white)
            .cornerRadius(16)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color("Neutral4"), lineWidth: 0.5)
            )
    }
}
