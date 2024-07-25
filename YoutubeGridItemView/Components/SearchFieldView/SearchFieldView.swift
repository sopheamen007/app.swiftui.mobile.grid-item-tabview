//
//  SearchFieldView.swift
//  YoutubeGridItemView
//
//  Created by Sopheamen VAN on 15/7/24.
//

import SwiftUI

struct SearchFieldView:View {
    // declare
    @State private var searchField = ""
    var body: some View {
        HStack (spacing: 0){
            Image(systemName: "magnifyingglass")
                .foregroundStyle(.black.opacity(0.3))
                .padding(.leading, 8)
            TextField("Search", text: $searchField)
                .padding(.all, 6)
        }
        .background(Color.textFieldBackgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    SearchFieldView()
}
