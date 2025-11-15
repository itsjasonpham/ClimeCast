import Foundation

struct ForecastDay: Decodable, Identifiable {
    let id = UUID()
    // later: date, high/low temps, condition, etc.
}
