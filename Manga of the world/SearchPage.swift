//
//  SearchPage.swift
//  Manga of the world
//
//  Created by A1 on 02.02.2024.
//

import SwiftUI

struct SearchPage: View {
    @State private var selectedTab: Tab = .magnifyingglass
    @State private var searchTxt = ""
    
    var body: some View {
        ScrollView {
            Spacer(minLength: 50)
            
            LazyVStack(alignment: .leading) {
                Text("Что желаешь почитать?")
                    .font(.title3)
                    .foregroundColor(.white)
                CustomSearchBar(searchTxt: $searchTxt)
            }
        }
        .padding()
        .background(Color("ColorFon")).edgesIgnoringSafeArea(.all)
    }
}

struct SearchPage_Previews: PreviewProvider {
    static var previews: some View {
        SearchPage()
    }
}
