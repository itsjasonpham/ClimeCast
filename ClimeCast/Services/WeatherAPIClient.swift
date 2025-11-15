import Foundation

class WeatherAPIClient {

    func makeForecastURL(for city: String) -> URL? {
        let endpoint = "/forecast.json"
        let query = "?key=\(APIConstants.apiKey)&q=\(city)&days=3"

        let urlString = APIConstants.baseURL + endpoint + query

        return URL(string: urlString)
    }
    
    func fetchForecast(for city: String) async throws -> Data {
        guard let url = makeForecastURL(for: city) else {
            throw URLError(.badURL)
        }

        let (data, response) = try await URLSession.shared.data(from: url)

        // Basic safety check
        if let httpResponse = response as? HTTPURLResponse,
            httpResponse.statusCode != 200 {
            print("❌ Bad HTTP Response:", httpResponse.statusCode)
            throw URLError(.badServerResponse)
        }

        return data
    }
}
