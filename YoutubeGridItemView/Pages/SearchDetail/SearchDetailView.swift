//
//  SearchDetailView.swift
//  YoutubeGridItemView
//
//  Created by Sopheamen VAN on 15/7/24.
//

import SwiftUI

struct SearchDetailView: View {
    // trigger back icon
    @Environment(\.dismiss)  var dismiss
    
    // tabs item
    @State private var selectedTab = "For you"
    let tabs = [
    "For you", "Accounts", "Audio", "Tags", "Places"
    ]
    // animate tab
    @Namespace private var underlineNamespace
    
    var body: some View {
        NavigationStack {
            ScrollView {
                // all content here
                VStack {
                    // back icon and search icon
                    HStack {
                        Button {
                            // action here
                            dismiss()
                        }label: {
                            Image(systemName: "chevron.backward")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 10, height: 10)
                                .padding(.trailing,8)
                                .foregroundStyle(.black)
                        }
                        
                        // search field view
                        SearchFieldView()
                    }
                    .padding(.horizontal)
                    
                    
                    // custom tab view
                    HStack {
                        // loop array item tabs here
                        ForEach(tabs, id: \.self) { tab in
                            Button {
                                withAnimation {
                                    selectedTab = tab
                                }
                            }label: {
                                Text(tab)
                                    .font(.subheadline)
                                    .foregroundStyle(selectedTab == tab ? .black : .gray)
                                    .padding(.bottom ,10)
                                    .overlay(selectedTab == tab ?
                                             Rectangle()
                                        .frame(height: 2)
                                        .matchedGeometryEffect(id: "underline", in: underlineNamespace)
                                        .foregroundStyle(.black)
                                             : nil,
                                             alignment: .bottom
                                    )
                            }
                            .frame(width: 70)
                        }
                        
                    }
                    .frame(height: 44, alignment: .leading)
                    
                    // get each content tabs here
                    
                    getContentTab(value: selectedTab)
                    
                }
               
                
            }
            .navigationBarBackButtonHidden(true)
        }
    }
    
    // view builder here
    @ViewBuilder
    func getContentTab(value: String) -> some View {
        switch value {
        case "For you":
            SearchForYouView()
        case "Accounts":
            SearchAccountsView()
                .padding(.horizontal)
        case "Audio":
            SearchAudioView()
                .padding(.horizontal)
        case "Tags":
            SearchTagsView()
                .padding(.horizontal)
        case "Places":
            SearchPlacesView()
                .padding(.horizontal)
        default:
            EmptyView()
        }
    }
}

#Preview {
    SearchDetailView()
}



