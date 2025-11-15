import Foundation

struct CurrentWeather: Decodable {
    let temp_f: Double
    let temp_c: Double
    let feelslike_f: Double
    let feelslike_c: Double

    let condition: Condition
}

struct Condition: Decodable {
    let text: String
    let icon: String
}
