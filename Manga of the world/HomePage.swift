//
//  HomePage.swift
//  Manga of the world
//
//  Created by A1 on 02.02.2024.
//

import SwiftUI

struct HomePage: View {
    @State private var selectedTab: Tab = .house
    
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Text("Hello, house!")
                    Spacer()
                    Text("JJJJJ")
                    Text("khsbvkshbvls")
                    Text("khsbvkshbdssrbdvls")
                }
            } 
        }

    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
