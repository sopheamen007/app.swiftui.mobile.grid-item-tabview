//
//  SearchAudioView.swift
//  YoutubeGridItemView
//
//  Created by Sopheamen VAN on 15/7/24.
//

import SwiftUI
import Kingfisher

struct SearchAudioView: View {
    let audioDatas:[SearchAudioResponse] = searchAudioData
    
    var body: some View {
        LazyVStack {
            ForEach(audioDatas) { data in
                HStack (spacing: 14){
                    // load image cover song
                    KFImage(URL(string: data.imageCoverUrl))
                        .resizable()
                        .scaledToFill()
                        .frame(width: 45, height: 45)
                        .clipShape(RoundedRectangle(cornerRadius: 6))
                    // content text
                    VStack (alignment: .leading, spacing: 0){
                        Text(data.songName)
                            .fontWeight(.semibold)
                        HStack (spacing: 0){
                            Text(data.ownerName)
                            Text(" - \(data.totalReels)K reels")
                        }
                        .font(.footnote)
                        .foregroundStyle(.gray)
                    }
                    .font(.subheadline)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.vertical,6)
            }
        }
    }
}

#Preview {
    SearchAudioView()
}
