//
//  PostData.swift
//  h4xor news
//
//  Created by Muhammad Umer on 31/07/2021.
//  Copyright © 2021 Muhammad Umer. All rights reserved.
//

import Foundation

struct Results: Codable {
    let hits: [Post]
}

struct Post: Codable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
