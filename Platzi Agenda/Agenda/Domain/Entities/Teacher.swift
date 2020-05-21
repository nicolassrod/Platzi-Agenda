//
//  Teacher.swift
//  Platzi Agenda
//
//  Created by Nicolás A. Rodríguez on 5/16/20.
//  Copyright © 2020 Nicolás A. Rodríguez. All rights reserved.
//

import Foundation

// MARK: - Teacher
struct Teacher: Codable {
    let name: String
    let image: String
    let twitter: String
    let company: String
    let position: String

    enum CodingKeys: String, CodingKey {
        case name = "name"
        case image = "image"
        case twitter = "twitter"
        case company = "company"
        case position = "position"
    }
}
