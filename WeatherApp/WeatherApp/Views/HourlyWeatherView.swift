//
//  HourlyWeatherView.swift
//  WeatherApp
//
//  Created by Mlay on 03/04/2021.
//

import SwiftUI

struct HourlyWeatherView: View {
    
    // MARK: - PROPERTIES
    @ObservedObject var cityVM: CityViewViewModel
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/) {
            HStack(spacing: 20){
                ForEach(cityVM.weather.hourly) { weather in
                    let icon = cityVM.getWeatherIconFont(icon: weather.weather.count > 0 ?
                        weather.weather[0].icon : "sun.max.fill")
                    let hour = cityVM.getTimerFor(timestamp: weather.dt)
                    let temp = cityVM.getTempFor(temp: weather.temp)
                    getHourlyView(hour: hour, image: icon, temp: temp)
                }
            }
        }
    }
    
    private func getHourlyView(hour: String, image: Image, temp: String) -> some View {
        VStack(spacing: 20) {
            Text(hour)
            image
                .foregroundColor(.yellow)
            Text(temp)
        }
        .foregroundColor(.white)
        .padding()
        .background(RoundedRectangle(cornerRadius: 5).fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.green]), startPoint: .topLeading, endPoint: .bottomTrailing)))
        .shadow(color: Color.white.opacity(0.1), radius: 2, x: -2, y: -2)
        .shadow(color: Color.black.opacity(0.2), radius: 2, x: 2, y: 2)
    }
}


// MARK: - PREVIEW
struct HourlyWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
