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
    
    var isEnabled: Bool {
        !(pulse == "" || hrv == "") && !(Double(pulse) == nil || Double(hrv) == nil)
        

    }
    
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
                    CustomTextFieldView(text: $pulse, placeholder: "Enter pulse")
                }
                VStack(alignment: .leading) {
                    Text("HRV")
                        .foregroundStyle(Color("Neutral15"))
                        .fontWeight(.medium)
                    CustomTextFieldView(text: $hrv, placeholder: "Enter HRV")
                }
            }
            .padding(.horizontal, 16)
            
            Spacer()
            ButtonView(title: "Add", action: {
                addLog()
                dismiss()
            }, isEnabled: isEnabled)
            
        }
    }
    
    func addLog() {
        guard let pulse = Int(pulse), let hrv = Int(hrv) else { return
        }
        
        logs.append(Log(pulse: pulse, hrv: hrv))
    }
}
