# ClimeCast ☀️🌧️  
A simple iOS weather application built in SwiftUI using the WeatherAPI.com service.  
This project is developed as part of CPSC 411 and implemented by a 6-person team.

---

## 📌 Overview  
ClimeCast allows users to search any city and view its current weather conditions along with a 3-day forecast.  
The app is built with a clean architecture that separates **Models**, **ViewModels**, **Services**, and **Views**, making collaboration simple for all group members.

---

## 🗂 Project Structure  
ClimeCast
├─ App/
│ └─ ClimeCastApp.swift
│


├─ Views/
│ ├─ Search/
│ │ └─ SearchView.swift
│ ├─ Forecast/
│ │ └─ ForecastView.swift
│ └─ About/
│ └─ AboutView.swift
│
├─ ViewModels/
│ ├─ SearchViewModel.swift
│ ├─ ForecastViewModel.swift
│ └─ SettingsViewModel.swift
│
├─ Models/
│ ├─ WeatherBundle.swift
│ ├─ CurrentWeather.swift
│ └─ ForecastDay.swift
│
├─ Services/
│ ├─ WeatherAPIClient.swift
│ ├─ APIConstants.swift
│ └─ WeatherService.swift
│
├─ Persistence/
│ └─ UserSettingsStore.swift
│
└─ ContentView.swift
