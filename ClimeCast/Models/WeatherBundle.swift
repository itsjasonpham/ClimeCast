import Foundation

struct WeatherBundle: Decodable {
    let location: Location
    let current: CurrentWeather
    let forecast: Forecast
}

struct Location: Decodable {
    let name: String
    let region: String?
    let country: String
}
