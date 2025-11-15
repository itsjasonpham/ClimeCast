import Foundation

protocol WeatherService {
    // later: function signatures like
    // func fetchWeather(for city: String) async throws -> WeatherBundle
}

class WeatherServiceLive: WeatherService {
    // later: will use WeatherAPIClient to actually call the API
}
