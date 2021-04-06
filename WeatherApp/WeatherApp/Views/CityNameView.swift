//
//  CityNameView.swift
//  WeatherApp
//
//  Created by Mlay on 01/04/2021.
//

import SwiftUI

struct CityNameView: View {
    
    // MARK: - PROPERTIES
    var city: String
    var date: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            VStack (alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10) {
                Text(city)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                Text(date)
            }
            .foregroundColor(.white)
        }
    }
}


// MARK: - PREVIEW
struct CityNameView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
