import SwiftUI

struct SearchView: View {
    @StateObject private var vm = SearchViewModel()

    var body: some View {
        VStack(spacing: 20) {
            
            // Search Bar
            TextField("Enter a city", text: $vm.city)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal)

            // Search Button
            Button("Search") {
                Task { await vm.search() }
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            .padding(.horizontal)

            // Loading State
            if vm.isLoading {
                ProgressView("Loading...")
            }

            // Error Message
            if let error = vm.errorMessage {
                Text(error)
                    .foregroundColor(.red)
            }

            // Show Weather Results
            if let bundle = vm.bundle {
                VStack(spacing: 10) {
                    Text(bundle.location.name)
                        .font(.title2)
                        .bold()

                    Text(bundle.current.condition.text)
                        .font(.headline)

                    Text("Temp: \(bundle.current.temp_f, specifier: "%.1f")°F")
                        .font(.body)

                    Text("Feels like: \(bundle.current.feelslike_f, specifier: "%.1f")°F")
                        .font(.footnote)
                        .foregroundColor(.gray)

                    Divider().padding(.vertical)

                    Text("3-Day Forecast")
                        .font(.headline)

                    ForEach(bundle.forecast.forecastday) { day in
                        VStack {
                            Text(day.date)
                                .bold()

                            Text(day.day.condition.text)

                            Text("High: \(day.day.maxtemp_f, specifier: "%.1f")°F")
                            Text("Low: \(day.day.mintemp_f, specifier: "%.1f")°F")
                        }
                        .padding(.vertical, 5)
                    }
                }
                .padding()
            }

            Spacer()
        }
        .navigationTitle("Search Weather")
    }
}

#Preview {
    SearchView()
}
