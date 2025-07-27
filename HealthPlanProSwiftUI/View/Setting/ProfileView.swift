//
//  ProfileView.swift
//  HealthPlanProSwiftUI
//
//  Created by iKame Elite Fresher 2025 on 7/26/25.
//


import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var settingManager: SettingManager

    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("Background"))
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 24) {
                ZStack() {
                    HStack {
                        Image("icBack")
                            .onTapGesture {
                                settingManager.popToRoot()
                            }
                            .padding(.leading, 16)
                        Spacer()
                    }
                    
                    Text("Profile")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundStyle(Color("Neutral1"))
                }
                .padding(.vertical, 24)
                Spacer()
                avaView
                infoProfileView
                Spacer()
                editButtonView
            }
        }
        .navigationBarHidden(true)
    }
    
    var avaView: some View {
        VStack(spacing: 24) {
            Image("icAva")
                .resizable()
                .frame(width: 108, height: 108)
            Text(settingManager.profile?.fullName ?? "")
                .font(.largeTitle)
                .fontWeight(.semibold)
//                .foregroundColor(.primary15)
        }
    }
    
    var infoProfileView: some View {
        VStack(spacing: 12) {
            VStack {
                Text("Your BMI")
                    .font(.system(size: 16))
                    .fontWeight(.medium)
                Text(String(format: "%.2f", settingManager.profile?.bmi ?? 0.0))
                    .font(.system(size: 64))
                    .fontWeight(.bold)
                    .foregroundColor(.good)
            }
            Divider()
                .padding(.horizontal, 16)
            HStack(spacing: 25.67) {
                VStack {
                    Text("\(String(format: "%.1f", settingManager.profile?.weight ?? 0.0)) kg")
                        .foregroundColor(.good)
                        .fontWeight(.semibold)
                    Text("Weight")
                        .foregroundColor(.neutral3)
                        .fontWeight(.medium)
                }
                VStack {
                    Text("\(String(format: "%.1f", settingManager.profile?.height ?? 0.0)) cm")
                        .foregroundColor(.good)
                        .fontWeight(.semibold)
                    Text("Height")
                        .foregroundColor(.neutral3)
                        .fontWeight(.medium)
                }
                VStack {
                    Text("28")
                        .foregroundColor(.good)
                        .fontWeight(.semibold)
                    Text("Age")                        .foregroundColor(.neutral3)
                        .fontWeight(.medium)
                }
                VStack {
                    Text(settingManager.profile?.gender ?? "")
                        .foregroundColor(.good)
                        .fontWeight(.semibold)
                    Text("Gender")
                        .foregroundColor(.neutral3)
                        .fontWeight(.medium)
                }
            }
        }
        .padding(.vertical, 24)
        .background(.white)
        .cornerRadius(16)
        .padding(.horizontal, 31.5)
    }
    
    var editButtonView: some View {
        Button(action: {
            settingManager.push(destination: .information)
        }, label: {
            Text("Edit")
                .font(.body)
                .fontWeight(.semibold)
                .foregroundColor(.white)
        })
        .frame(maxWidth: .infinity, maxHeight: 56)
        .background(Color("Primary"))
        .cornerRadius(16)
        .padding(20)
    }
}


#Preview {
    ProfileView()
}
