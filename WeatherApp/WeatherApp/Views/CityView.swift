//
//  CityView.swift
//  WeatherApp
//
//  Created by Mlay on 04/04/2021.
//

import SwiftUI

struct CityView: View {
    
    // MARK: - PROPERTIES
    @ObservedObject var cityVM: CityViewViewModel
    
    // MARK: - BODY
    var body: some View {
        VStack {
            CityNameView(city: cityVM.city, date: cityVM.date)
                .shadow(radius: 0)
            TodayWeatherView(cityVM: cityVM)
                .padding()
            HourlyWeatherView(cityVM: cityVM)
            DailyWeatherView(cityVM: cityVM)
        }
        .padding(.bottom, 30)
    }
}


// MARK: - PREVIEW
struct CityView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
