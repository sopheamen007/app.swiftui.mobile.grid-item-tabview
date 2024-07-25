//
//  SearchView.swift
//  YoutubeGridItemView
//
//  Created by Sopheamen VAN on 15/7/24.
//

import SwiftUI
// for image network and cache
import Kingfisher

struct SearchView: View {
    
   //
    @State private var isSearching = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                // search field
                SearchFieldView()
                    .padding(.horizontal)
                    .padding(.vertical ,4)
                    .onTapGesture {
                        // once click on search go to search detail page
                        isSearching = true
                    }
                
                // grid item view
                GridItemView()
                
            }
            .navigationDestination(isPresented: $isSearching) {
                // view page
                SearchDetailView()
            }
            
        }
    }
}

#Preview {
    SearchView()
}



