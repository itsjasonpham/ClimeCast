import Foundation

struct Forecast: Decodable {
    let forecastday: [ForecastDay]
}

struct ForecastDay: Decodable, Identifiable {
    let id = UUID()

    let date: String
    let day: DayInfo
}

struct DayInfo: Decodable {
    let maxtemp_f: Double
    let mintemp_f: Double
    let condition: Condition
}
