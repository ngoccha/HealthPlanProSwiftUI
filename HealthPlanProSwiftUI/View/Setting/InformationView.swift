import SwiftUI

struct InformationView: View {
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var gender: String = "Male"
    @State private var height: String = ""
    @State private var weight: String = ""
    
    @State private var show : Bool = false

    
    var body: some View {
        @State var heightCmtoM = (Double(height) ?? 0) / 100
        @State var bmi = (Double(weight) ?? 0) / pow(heightCmtoM, 2)

        VStack {
            Text("My Profile")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.bottom, 16)
                        
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
                        
            if show {
                HStack(alignment: .top, spacing: 16) {
                    VStack(alignment: .leading, spacing: 11) {
                        Text("**Full name:** \(firstName) \(lastName)")
                        Text("**Height:** \(height) cm")
                        Text("**BMI:** \(bmi)")
                    }
                    Spacer()
                    VStack(alignment: .leading, spacing: 11) {
                        Text("**Gender:** \(gender)")
                        Text("**Weight:** \(weight) kg")
                    }
                    .padding(.trailing, 50)
                }
            }
        
            Spacer()
            
            Button(action: {
                show = true
            }, label: {
                Text("Complete")
                    .font(.body)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
            })
            .frame(width: 361, height: 52)
            .background(Color(.primary1))
            .cornerRadius(16)
        }
        .padding(16)
        .background(Color(.background))
    }
}

#Preview {
    InformationView()
}
