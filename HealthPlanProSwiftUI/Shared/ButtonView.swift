//
//  ButtonView.swift
//  HealthPlanProSwiftUI
//
//  Created by iKame Elite Fresher 2025 on 7/21/25.
//

import SwiftUI

struct ButtonView: View {
    var title: String
    var action: () -> Void
    var isEnabled: Bool = true

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
                .frame(maxWidth: .infinity, maxHeight: 56)
                .background(isEnabled ? Color("Primary") : Color("Neutral3"))
                .cornerRadius(16)
        }
        .disabled(!isEnabled)
        .padding(16)
    }
}

