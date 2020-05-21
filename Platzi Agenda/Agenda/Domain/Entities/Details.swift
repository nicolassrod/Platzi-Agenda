//
//  Details.swift
//  Platzi Agenda
//
//  Created by Nicolás A. Rodríguez on 5/16/20.
//  Copyright © 2020 Nicolás A. Rodríguez. All rights reserved.
//

import Foundation

// MARK: - Details
struct Details: Codable {
    let id: Int
    let title: String
    let slug: String
    let free: Bool
    let order: Int
    let detailsDescription: String
    let image: String
    let color: String
    let badge: String
    let coverURL: String
    let coverVerticalURL: String
    let socialImageURL: String
    let socialDescription: String
    let lang: Lang
    let video: String?
    let url: String
    let liveURL: String
    let isRequired: Bool
    let teachers: [Teacher]
    let launchDate: Date?
    let buyURL: String
    let bought: Bool
    let hasCourse: Bool
    let languageType: LanguageType
    let languageNote: String
    let type: CourseType
    let isNew: Bool
    let contentType: ContentType

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case title = "title"
        case slug = "slug"
        case free = "free"
        case order = "order"
        case detailsDescription = "description"
        case image = "image"
        case color = "color"
        case badge = "badge"
        case coverURL = "cover_url"
        case coverVerticalURL = "cover_vertical_url"
        case socialImageURL = "social_image_url"
        case socialDescription = "social_description"
        case lang = "lang"
        case video = "video"
        case url = "url"
        case liveURL = "live_url"
        case isRequired = "is_required"
        case teachers = "teachers"
        case launchDate = "launch_date"
        case buyURL = "buy_url"
        case bought = "bought"
        case hasCourse = "has_course"
        case languageType = "language_type"
        case languageNote = "language_note"
        case type = "type"
        case isNew = "is_new"
        case contentType = "content_type"
    }
}
