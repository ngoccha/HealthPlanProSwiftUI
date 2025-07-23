//
//  ButtonView.swift
//  HealthPlanProSwiftUI
//
//  Created by iKame Elite Fresher 2025 on 7/21/25.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        Button(action: {
        }) {
            Text("Continue")
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, maxHeight: 56)
                .background(Color("Primary"))
                .cornerRadius(16)
        }
        .padding(16)
    }
}
