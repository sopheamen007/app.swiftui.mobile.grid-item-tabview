//
//  SearchTagRespoonse.swift
//  YoutubeGridItemView
//
//  Created by Sopheamen VAN on 15/7/24.
//
import Foundation

struct SearchTagRespoonse: Hashable, Identifiable {
    let id: Int
    let tagName: String
    let totalPosts: Int
}
