//
//  CustomSearchBar.swift
//  Manga of the world
//
//  Created by A1 on 02.02.2024.
//

import SwiftUI

extension UIApplication {
   func endEditing() {
       sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
   }
}

struct CustomSearchBar: View {
    @Binding var searchTxt: String
    
    private enum Field: Int {
        case yourTextEdit
    }
    @FocusState private var focusedField: Field?
    
    var body: some View {
        TextField("Поиск", text: $searchTxt)
            .padding(10)
            .opacity(0.9)
            .foregroundColor(Color.white)
            .overlay(
                ZStack {
                        Image(systemName: "xmark")
                            .foregroundColor(Color("ColorGray"))
                            .opacity(searchTxt.isEmpty ? 0.0 : 1.0)
                            .onTapGesture {
                                searchTxt = ""
                                endEditing()
                            }
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(Color("ColorGray"))
                            .opacity(searchTxt.isEmpty ? 1.0 : 0.0)
                            .padding(15)
                } ,alignment: .trailing)
            .foregroundColor(Color.white)
            .background(RoundedRectangle(cornerRadius: 20)
                .fill(Color("ColorDarkGray")))
    }
    private func endEditing() {
        UIApplication.shared.endEditing()
    }
}

struct CustomSearchBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomSearchBar(searchTxt: .constant(""))
    }
}
