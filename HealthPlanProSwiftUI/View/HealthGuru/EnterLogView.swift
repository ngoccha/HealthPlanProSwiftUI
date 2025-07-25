//
//  EnterLogView.swift
//  HealthPlanProSwiftUI
//
//  Created by iKame Elite Fresher 2025 on 7/23/25.
//

import SwiftUI

struct EnterLogView: View {
    @Environment(\.dismiss) private var dismiss
    @Binding var logs: [Log]
    @State private var pulse: String = ""
    @State private var hrv: String = ""
    var body: some View {
        VStack {
            ZStack() {
                HStack {
                    Image("icClose")
                        .onTapGesture {
                            dismiss()
                        }
                        .padding(.leading, 16)
                    Spacer()
                }
                
                Text("Information")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundStyle(Color("Neutral1"))
            }
            .padding(.vertical, 24)
            
            HStack(spacing: 16) {
                VStack(alignment: .leading) {
                    Text("Pulse")
                        .foregroundStyle(Color("Neutral15"))
                        .fontWeight(.medium)
                    TextField("", text: $pulse)
                        .padding(.leading, 12)
                        .frame(height: 52)
                        .font(.body)
                        .background(Color.white)
                        .cornerRadius(16)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color("Neutral4"), lineWidth: 0.5)
                        )
                }
                VStack(alignment: .leading) {
                    Text("HRV")
                        .foregroundStyle(Color("Neutral15"))
                        .fontWeight(.medium)
                    TextField("", text: $hrv)
                        .padding(.leading, 12)
                        .frame(height: 52)
                        .font(.body)
                        .background(Color.white)
                        .cornerRadius(16)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color("Neutral4"), lineWidth: 0.5)
                        )
                }
            }
            .padding(.horizontal, 16)
            
            Spacer()
            ButtonView(title: "Add", action: {
                dismiss()
            })
            
        }
    }
    
    func addLog() {
        guard let pulse = Int(pulse), let hrv = Int(hrv) else { return
        }
        
        logs.append(Log(pulse: pulse, hrv: hrv))
    }
}

#Preview {
    EnterLogView(logs: .constant([
        Log(pulse: 120, hrv: 60)
    ]))
}
