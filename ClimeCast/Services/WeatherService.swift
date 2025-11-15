import Foundation

protocol WeatherService {
    func getForecast(for city: String) async throws -> WeatherBundle
}

class WeatherServiceLive: WeatherService {

    private let apiClient = WeatherAPIClient()

    func getForecast(for city: String) async throws -> WeatherBundle {
        let data = try await apiClient.fetchForecast(for: city)
        let decoded = try JSONDecoder().decode(WeatherBundle.self, from: data)
        return decoded
    }
}
