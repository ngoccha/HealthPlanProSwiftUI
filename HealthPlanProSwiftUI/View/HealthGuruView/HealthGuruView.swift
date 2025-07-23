//
//  LogView.swift
//  HealthPlanProSwiftUI
//
//  Created by iKame Elite Fresher 2025 on 7/21/25.
//

import SwiftUI

struct HealthGuruView: View {
    @State private var isGoToLog = false

    var body: some View {
        VStack {
            Text("Health Guru")
                .font(.system(size: 40))
                .fontWeight(.semibold)
                .foregroundColor(Color("Neutral11"))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 67)
            
            Image("icHeartLog")
                .padding(.horizontal, 56)
                .padding(.bottom, 67)
                .onTapGesture {
                    isGoToLog.toggle()
                }
                .fullScreenCover(isPresented: $isGoToLog) {
                   EnterLogView()
                }
            
            EmptyLogView()
            
            Spacer()
        }
        
        .padding(.horizontal, 16)
        .background(Color("Background"))
    }
}

#Preview {
    HealthGuruView()
}
