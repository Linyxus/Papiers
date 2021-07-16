//
//  Paper.swift
//  Papiers
//
//  Created by Yichen Xu on 2021/7/16.
//

import Foundation

struct Paper: Hashable, Codable, Identifiable {
    var id: Int
    var title: String
    var authors: [String]
    var venue: String
    var year: String
    
    var authorList: String {
        return authors.joined(separator: ", ")
    }
}
