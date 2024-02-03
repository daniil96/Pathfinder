//
//  CustomTabBar.swift
//  Manga of the world
//
//  Created by A1 on 02.02.2024.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case house
    case magnifyingglass
    case heart
    case person
}

struct CustomTabBar: View {
    @State var selectedTab: Tab
    private var fillImage: String {
        selectedTab.rawValue
    }
    
    var body: some View {
        VStack {
            TabView(selection: $selectedTab) {
                HomePage()
                    .tag(Tab.house)
                SearchPage()
                    .tag(Tab.magnifyingglass)
                LikePage()
                    .tag(Tab.heart)
                ProfilePage()
                    .tag(Tab.person)
            }
                VStack {
                    HStack {
                        ForEach(Tab.allCases, id: \.rawValue) { tab in
                            Spacer()
                            Image(systemName: selectedTab == tab ? fillImage : tab.rawValue)
                                .scaleEffect(tab == selectedTab ? 1.25 : 1.0)
                                .foregroundColor(selectedTab == tab ? Color.white : Color.gray)
                                .font(.system(size: 22))
                                .onTapGesture {
                                    withAnimation(.easeIn(duration: 0.1)) {
                                        selectedTab = tab
                                    }
                                }
                            Spacer()
                        }
                    }
                    .frame(width: nil, height: 40)
                    .background(Color("ColorBar"))
                    .cornerRadius(10)
                    .padding()
                }
            }
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar(selectedTab: .house)
    }
}


