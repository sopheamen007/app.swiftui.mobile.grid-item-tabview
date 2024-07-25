//
//  ProfileImageView.swift
//  YoutubeGridItemView
//
//  Created by Sopheamen VAN on 15/7/24.
//

import SwiftUI
import Kingfisher

struct ProfileImageView: View {
    let profileImage:String
    let size: CGFloat
    var body: some View {
        KFImage(URL(string: profileImage))
            .resizable()
            .scaledToFill()
            .frame(width: size,height: size)
            .clipShape(Circle())
        
    }
}

#Preview {
    ProfileImageView(profileImage: userDataCurrent.profileImage, size: 40)
}
