//
//  ContentView.swift
//  WeatherApp
//
//  Created by Mlay on 26/03/2021.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    @ObservedObject var cityVM =  CityViewViewModel()
    
    // MARK: - BODY
    var body: some View {
        ZStack (alignment: .bottom) {
            VStack(spacing: 0) {
                MenuHeaderView(cityVM: cityVM)
                    .padding()
                ScrollView(showsIndicators: false) {
                    CityView(cityVM: cityVM)
                }
                .padding(.top, 10)
            }
            .padding(.top, 40)
        }
        .background(RoundedRectangle(cornerRadius: 5).fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.green]), startPoint: .topLeading, endPoint: .bottomTrailing)))
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}


// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
