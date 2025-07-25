//
//  LogView.swift
//  HealthPlanProSwiftUI
//
//  Created by iKame Elite Fresher 2025 on 7/23/25.
//

import SwiftUI

struct LogView: View {
    @Binding var logs: [Log]
    var body: some View {
        List {
            ForEach(0..<logs.count, id: \.self) { item in
                HStack(spacing: 13) {
                    Image("icHeartbeat")
                    HStack(spacing: 27) {
                        VStack(alignment: .leading) {
                            Text("Pulse")
                                .fontWeight(.medium)
                                .foregroundStyle(Color("Neutral3"))
                            Text("\(logs[item].pulse) bpm")
                                .fontWeight(.medium)
                                .foregroundStyle(Color(logs[item].status.statusColor))
                        }
                        VStack(alignment: .leading) {
                            Text("HRV")
                                .fontWeight(.medium)
                                .foregroundStyle(Color("Neutral3"))
                            Text("\(logs[item].hrv) bpm")
                                .fontWeight(.medium)
                                .foregroundStyle(Color(logs[item].status.statusColor))
                        }
                        VStack(alignment: .leading) {
                            Text("Status")
                                .fontWeight(.medium)
                                .foregroundStyle(Color("Neutral3"))
                            Text("\(logs[item].status.statusName)")
                                .fontWeight(.medium)
                                .foregroundStyle(Color(logs[item].status.statusColor))
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
            }
        }
        .listStyle(.plain)
        .padding(.bottom, 34)
    }
}
