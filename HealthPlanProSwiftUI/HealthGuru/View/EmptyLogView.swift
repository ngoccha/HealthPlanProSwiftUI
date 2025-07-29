//
//  EmptyLogView.swift
//  HealthPlanProSwiftUI
//
//  Created by iKame Elite Fresher 2025 on 7/23/25.
//

import SwiftUI

struct EmptyLogView: View {
    var body: some View {
        HStack(spacing: 13) {
            Image("icHeartbeat")
            HStack(spacing: 27) {
                VStack(alignment: .leading) {
                    Text("Pulse")
                        .fontWeight(.medium)
                        .foregroundColor(Color("Neutral3"))
                    Text("-- bpm")
                        .fontWeight(.medium)
                        .foregroundColor(Color("Neutral2"))
                }
                VStack(alignment: .leading) {
                    Text("HRV")
                        .fontWeight(.medium)
                        .foregroundColor(Color("Neutral3"))
                    Text("-- bpm")
                        .fontWeight(.medium)
                        .foregroundColor(Color("Neutral2"))
                }
                VStack(alignment: .leading) {
                    Text("Status") .fontWeight(.medium)
                        .foregroundColor(Color("Neutral3"))
                    Text("--")
                        .fontWeight(.medium)
                        .foregroundColor(Color("Neutral2"))
                }
            }
            Spacer()
        }
        .padding(12)
        .background(Color.white)
        .cornerRadius(16)
        .listRowInsets(.init(top: 0,
                             leading: 0,
                             bottom: 0,
                             trailing: 0))
        .listRowSeparator(.hidden)
        .listRowBackground(Color.clear)
        .padding(.vertical, 6)
        
        HStack() {
            VStack(alignment: .leading, spacing: 4) {
                HStack(spacing: 4) {
                    Image("icHeartPop")
                    Text("Track daily")
                        .fontWeight(.semibold)
                }
                Text("Click heart icon to log your data")
                    .foregroundColor(Color("Neutral2"))
            }
            .padding(.leading, 16)
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: 80)
        .background(Color.white)
        .cornerRadius(16)
    }
}
