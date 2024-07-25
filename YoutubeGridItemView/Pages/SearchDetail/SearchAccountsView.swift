//
//  SearchAccountsView.swift
//  YoutubeGridItemView
//
//  Created by Sopheamen VAN on 15/7/24.
//

import SwiftUI

struct SearchAccountsView: View {
    // get dummy data account
    let searchAccountDatas: [SearchRecentResponse] = searchRecentData
    var body: some View {
        ForEach(searchAccountDatas) { searchData in
            HStack (spacing:14){
                ProfileImageView(profileImage: searchData.user.profileImage, size: 45)
                VStack (alignment: .leading, spacing: 0){
                    HStack (spacing: 5){
                        Text(searchData.user.username)
                            .fontWeight(.semibold)
                        Image("verified")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 17, height: 17)
                            .padding(.top, 3)
                    }
                    HStack (spacing: 0){
                        Text(searchData.user.fullname)
                        Text(" - 3.4M followers")
                    }
                    .font(.footnote)
                    .foregroundStyle(.gray)
                }
            }
            .frame(maxWidth: .infinity , alignment: .leading)
        }
    }
}

#Preview {
    SearchAccountsView()
}
