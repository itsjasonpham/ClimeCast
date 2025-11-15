import Foundation

@MainActor
class ForecastViewModel: ObservableObject {

    @Published var bundle: WeatherBundle?

    func update(with bundle: WeatherBundle) {
        self.bundle = bundle
    }
}
