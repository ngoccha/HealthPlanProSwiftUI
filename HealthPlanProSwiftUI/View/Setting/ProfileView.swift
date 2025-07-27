import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("background"))
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 24) {
                Spacer()
                avaView
                infoProfileView
                Spacer()
                editButtonView
            }
        }
    }
    
    var avaView: some View {
        VStack(spacing: 24) {
            Image("ava")
                .resizable()
                .frame(width: 108, height: 108)
            Text("John Weak")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.primary15)
        }
    }
    
    var infoProfileView: some View {
//        struct Info {
//            var weight: String
//            var height: String
//            var age = 28
//            var gender: String
//        }
//        @State var info = [
//           Info(weight: "45 kg", height: "160 cm", gender: "Female")
//        ]
        
        VStack(spacing: 12) {
            VStack {
                Text("Your BMI")
                    .font(.system(size: 16))
                    .fontWeight(.medium)
                Text("23.5")
                    .font(.system(size: 64))
                    .fontWeight(.bold)
                    .foregroundColor(.good)
            }
            Divider()
                .padding(.horizontal, 16)
            HStack(spacing: 25.67) {
                VStack {
                    Text("48 kg")
                        .foregroundColor(.good)
                        .fontWeight(.semibold)
                    Text("Weight")
                        .foregroundColor(.neutral3)
                        .fontWeight(.medium)
                }
                VStack {
                    Text("160 cm")
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
                    Text("Female")
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
        }, label: {
            Text("Edit")
                .font(.body)
                .fontWeight(.semibold)
                .foregroundColor(.white)
        })
        .frame(maxWidth: .infinity, maxHeight: 56)
        .background(Color(.primary1))
        .cornerRadius(16)
        .padding(20)
    }
}


#Preview {
    ProfileView()
}
