//
//  GridItemView.swift
//  YoutubeGridItemView
//
//  Created by Sopheamen VAN on 15/7/24.
//

import SwiftUI
import Kingfisher

struct GridItemView: View {
    // columns grid
    let columns:[GridItem] = [
        GridItem(.flexible(), spacing: 2),
        GridItem(.flexible(), spacing: 2),
        GridItem(.flexible(), spacing: 2)
    ]
    
    // get size of width of the screen
    let size = (UIScreen.main.bounds.width / 3) - 2
    

    
    var body: some View {
        LazyVGrid (columns: columns, spacing: 2) {
            // loop post data
            ForEach(postsData) { post in
                if let urlString = post.imageOrVideoUrl.first, let url = URL(string: urlString) {
                    
                    if(post.postType == 1){
                        // build photo collection
                        if(post.imageOrVideoUrl.count > 1){
                            ZStack (alignment: .topTrailing){
                                KFImage(url)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: size, height: size)
                                    .clipped()
                                
                                Image("photo_collection_icon")
                                    .padding(.all, 10)
                                    
                            }
                           
                        }else {
                            KFImage(url)
                                .resizable()
                                .scaledToFill()
                                .frame(width: size, height: size)
                                .clipped()
                        }
                        
                    }else {
                        // video
                        ZStack (alignment: .topTrailing){
                            ThumbnailImageView(videoURL: URL(string: urlString)!,width: size, height: size)
                            Image("reels_white_icon")
                                .padding(.all, 10)
                                
                        }
                        
                           
                    }
                }
            }
        }
    }
}


#Preview {
    GridItemView()
}
