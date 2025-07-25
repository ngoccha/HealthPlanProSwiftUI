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
                            Text("\(logs[item].pulse) bpm")
                        }
                        VStack(alignment: .leading) {
                            Text("HRV")
                            Text("\(logs[item].hrv) bpm")
                        }
                        VStack(alignment: .leading) {
                            Text("Status")
                            Text("\(logs[item].status)")
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
    }
}
