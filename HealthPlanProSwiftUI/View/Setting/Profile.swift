struct Profile: Encodable, Decodable {
    var firstName: String
    var lastName: String
    var bmi: String
    var weight: Int
    var height: Int
    var gender: String
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
}