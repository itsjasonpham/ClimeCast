import Foundation

@MainActor
class SearchViewModel: ObservableObject {

    @Published var city: String = ""
    @Published var bundle: WeatherBundle?
    @Published var isLoading = false
    @Published var errorMessage: String?

    private let service: WeatherService = WeatherServiceLive()

    func search() async {
        guard !city.isEmpty else { return }
        isLoading = true
        errorMessage = nil

        do {
            let result = try await service.getForecast(for: city)
            self.bundle = result
        } catch {
            self.errorMessage = "Could not load weather data."
            print("❌ Error:", error)
        }

        isLoading = false
    }
}
