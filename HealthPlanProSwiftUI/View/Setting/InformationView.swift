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
    
    
    var body: some View {
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
                        TextField(("Enter first name"), text:
                                    $firstName)
                        .padding(.leading, 12)
                        .frame(height: 52)
                        .font(.body)
                        .background(Color.white)
                        .cornerRadius(16)
                    }
                    VStack(alignment: .leading) {
                        Text("Last name")
                            .font(.body)
                        TextField("Enter last name", text: $lastName)
                            .padding(.leading, 12)
                            .frame(height: 52)
                            .font(.body)
                            .background(Color.white)
                            .cornerRadius(16)
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
                
                
                VStack() {
                    VStack(alignment: .leading) {
                        Text("Height")
                            .font(.body)
                        HStack() {
                            TextField("Enter height", text: $height)
                                .padding(.leading, 12)
                                .frame(height: 52)
                                .font(.body)
                                .background(Color.white)
                                .cornerRadius(16)
                            Text("Cm")
                                .padding(.leading, 12)
                                .padding(.trailing, 8)
                        }
                    }
                    .padding(.bottom, 21)
                    
                    VStack(alignment: .leading) {
                        Text("Weight")
                            .font(.body)
                        HStack() {
                            TextField("Enter weight", text: $weight)
                                .padding(.leading, 12)
                                .frame(height: 52)
                                .font(.body)
                                .background(Color.white)
                                .cornerRadius(16)
                            Text("Kg")
                                .padding(.leading, 12)
                                .padding(.trailing, 8)
                        }
                    }
                }
                .padding(.bottom, 21)
                
                Spacer()
                
                Button(action: {
                    saveProfile()
                    print(settingManager.profile ?? "nil")
                    
                }, label: {
                    Text("Complete")
                        .font(.body)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                })
                .frame(width: 361, height: 52)
                .background(Color("Primary"))
                .cornerRadius(16)
            }
            .padding(16)
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

#Preview {
    InformationView()
}

