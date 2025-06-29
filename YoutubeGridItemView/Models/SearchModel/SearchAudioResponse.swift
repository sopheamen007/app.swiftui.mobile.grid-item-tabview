//
//  SearchAudioResponse.swift
//  YoutubeGridItemView
//
//  Created by Sopheamen VAN on 15/7/24.
//
import Foundation

struct SearchAudioResponse: Hashable, Identifiable {
    let id: Int
    let imageCoverUrl: String
    let songName: String
    let ownerName: String
    let totalReels: Int
}
