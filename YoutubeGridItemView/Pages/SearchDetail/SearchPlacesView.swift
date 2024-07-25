//
//  SearchPlacesView.swift
//  YoutubeGridItemView
//
//  Created by Sopheamen VAN on 15/7/24.
//

import SwiftUI

struct SearchPlacesView: View {
    let placesDatas:[SearchPlaceResponse] = searchPlaceData
    var body: some View {
        LazyVStack {
            ForEach(placesDatas) { data in
                HStack (spacing: 14){
                    Image("hashtag_icon")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 23, height: 23)
                        .padding(.all, 12)
                        .overlay(Circle().stroke(Color.blackOpacity.opacity(0.3)))
                    
                    // content text
                    VStack (alignment: .leading , spacing:0){
                        Text(data.locationName)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        Text(data.locationAddress ?? "")
                            .font(.footnote)
                            .foregroundStyle(.gray)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.vertical, 6)
            }
        }
    }
}

#Preview {
    SearchPlacesView()
}
