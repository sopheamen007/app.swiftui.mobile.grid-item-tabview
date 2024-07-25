//
//  ThumbnailImageView.swift
//  YoutubeGridItemView
//
//  Created by Sopheamen VAN on 15/7/24.
//

import SwiftUI

struct ThumbnailImageView: View {
    let videoURL: URL
    let width, height: CGFloat?
    @State private var thumbnailImage: UIImage?
    
    var body: some View {
        Group {
            if let thumbnailImage = thumbnailImage {
                Image(uiImage: thumbnailImage)
                    .resizable()
                    .scaledToFill()
                    .frame(width: width, height: height)
                    .clipped()
                    
            } else {
                Rectangle()
                    .fill(Color.primaryColor)
                    .frame(width: width, height: height)
                    .onAppear {
                        generateThumbnail(from: videoURL) { image in
                            self.thumbnailImage = image
                        }
                    }
            }
        }
    }
}

#Preview {
    ThumbnailImageView(videoURL: URL(string: "https://videos.pexels.com/video-files/1448735/1448735-uhd_2732_1440_24fps.mp4")!,width: 140, height: 140)
}
