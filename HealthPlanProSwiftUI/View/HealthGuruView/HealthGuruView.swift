//
//  LogView.swift
//  HealthPlanProSwiftUI
//
//  Created by iKame Elite Fresher 2025 on 7/21/25.
//

import SwiftUI

struct HealthGuruView: View {
    @State private var isGoToLog = false
    @Binding var logs: [Log]
    
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
                    EnterLogView(logs: $logs)
                }
            
            if logs.isEmpty {
                LogView()
            } else {
                EmptyLogView()
            }
            
            Spacer()
        }
        
        .padding(.horizontal, 16)
        .background(Color("Background"))
    }
}

#Preview {
    HealthGuruView(logs: .constant([
        Log(pulse: 120, hrv: 60)
    ]))
}
