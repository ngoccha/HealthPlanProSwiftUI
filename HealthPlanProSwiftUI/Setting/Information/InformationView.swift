//
//  InformationView.swift
//  HealthPlanProSwiftUI
//
//  Created by iKame Elite Fresher 2025 on 7/26/25.
//


import SwiftUI

struct InformationView: View {
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var gender: String = "Male"
    @State private var height: String = ""
    @State private var weight: String = ""
    
    @EnvironmentObject var settingManager: SettingManager
    
    var isEnabled: Bool {
        (!(firstName == "" || lastName == "" || height == "" || weight == "") && !((Double(height) == nil) || (Double(weight) == nil)))
    }
    
    var body: some View {
        VStack {
            VStack {
                ZStack() {
                    HStack {
                        Image("icBack")
                            .onTapGesture {
                                settingManager.popToRoot(destination: .setting)
                            }
                        Spacer()
                    }
                    
                    Text("Information")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundStyle(Color("Neutral1"))
                }
                .padding(.bottom, 24)
                
                
                HStack(spacing: 12) {
                    VStack(alignment: .leading) {
                        Text("First name")
                            .font(.body)
                            .foregroundStyle(Color("Neutral15"))
                        CustomTextFieldView(text: $firstName, placeholder: "Enter first name...")
                    }
                    VStack(alignment: .leading) {
                        Text("Last name")
                            .font(.body)
                            .foregroundStyle(Color("Neutral15"))
                        CustomTextFieldView(text: $lastName, placeholder: "Enter last name...")
                    }
                }
                .padding(.bottom, 21)
                
                VStack(alignment: .leading) {
                    Text("Gender")
                        .font(.body)
                    Picker("Gender", selection: $gender) {
                        Text("Male").tag("Male")
                        Text("Female").tag("Female")
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    
                    .font(.body)
                    
                }
                .padding(.bottom, 21)
                
                
                HStack() {
                    VStack(alignment: .leading) {
                        Text("Height")
                            .font(.body)
                            .foregroundStyle(Color("Neutral15"))
                        HStack() {
                            CustomTextFieldView(text: $height, placeholder: "Enter height...")
                        }
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Weight")
                            .font(.body)
                            .foregroundStyle(Color("Neutral15"))
                        HStack() {
                            CustomTextFieldView(text: $weight, placeholder: "Enter weight...")
                        }
                    }
                }
                .padding(.bottom, 21)
                
                Spacer()
            }
            .padding(16)
            
            ButtonView(title: "Complete", action: saveProfile, isEnabled: isEnabled)
        }
        .background(Color(.background))
        .navigationBarHidden(true)
        
    }
    func saveProfile() {
        
        guard let weightValue = Double(weight),
              let heightValue = Double(height) else {return}
        
        let heightCmtoMValue = heightValue / 100
        let bmi = weightValue / pow(heightCmtoMValue, 2)
        
        let newProfile = Profile(
            firstName: self.firstName,
            lastName: self.lastName,
            bmi: bmi,
            weight: weightValue,
            height: heightValue,
            gender: self.gender
        )
        settingManager.profile = newProfile
        settingManager.push(destination: .profile)
        
    }
}
