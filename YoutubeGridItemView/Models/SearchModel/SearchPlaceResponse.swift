//
//  SearchPlaceResponse.swift
//  YoutubeGridItemView
//
//  Created by Sopheamen VAN on 15/7/24.
//
import Foundation

struct SearchPlaceResponse: Hashable, Identifiable {
    let id: Int
    let locationName: String
    let locationAddress: String?
}
