//
//  LogView.swift
//  HealthPlanProSwiftUI
//
//  Created by iKame Elite Fresher 2025 on 7/21/25.
//

import SwiftUI

struct HeathGuruView: View {
    //    @State private var selection = Set<UUID>()
    
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Health Guru")
                .font(.system(size: 40))
                .fontWeight(.semibold)
                .foregroundColor(Color("Neutral11"))
                .multilineTextAlignment(.leading)
                .padding(.bottom, 67)
            Image("icHeartLog")
                .padding(.horizontal, 56)
                .padding(.bottom, 67)
//            List {
//                ForEach(0..<2, id: \.self) { index in
//                    HStack(spacing: 13) {
//                        Image("icHeartbeat")
//                        HStack(spacing: 27) {
//                            VStack(alignment: .leading) {
//                                Text("Pulse")
//                                Text("-- bpm")
//                            }
//                            VStack(alignment: .leading) {
//                                Text("HRV")
//                                Text("-- bpm")
//                            }
//                            VStack(alignment: .leading) {
//                                Text("Status")
//                                Text("--")
//                            }
//                        }
//                        Spacer()
//                    }
//                    .padding(12)
//                    .background(Color.white)
//                    .cornerRadius(16)
//                    .listRowInsets(.init(top: 0,
//                                         leading: 0,
//                                         bottom: 0,
//                                         trailing: 0))
//                    .listRowSeparator(.hidden)
//                    .listRowBackground(Color.clear)
//                    .padding(.vertical, 6)
//                }
//            }
//            .listStyle(.plain)
            
            HStack(spacing: 13) {
                                    Image("icHeartbeat")
                                    HStack(spacing: 27) {
                                        VStack(alignment: .leading) {
                                            Text("Pulse")
                                            Text("-- bpm")
                                        }
                                        VStack(alignment: .leading) {
                                            Text("HRV")
                                            Text("-- bpm")
                                        }
                                        VStack(alignment: .leading) {
                                            Text("Status")
                                            Text("--")
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
        .padding(.horizontal, 16)
        .padding(.bottom, 114)
        .background(Color("Background"))
    }
}

#Preview {
    HeathGuruView()
}
