//
//  InsertFactsVieww.swift
//  Africa
//
//  Created by Mlay on 25/03/2021.
//

import SwiftUI

struct InsertFactsVieww: View {
    
    // MARK: - PROPERTIES
    let animal : Animal
    
    // MARK: - BODY
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            } //: TAB
            .tabViewStyle(PageTabViewStyle())
            .frame(
                minHeight: 148,
                idealHeight: 180,
                maxHeight: 180
            )
        } //: BOX
    }
}


// MARK: - PREVIEW
struct InsertFactsVieww_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsertFactsVieww(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
