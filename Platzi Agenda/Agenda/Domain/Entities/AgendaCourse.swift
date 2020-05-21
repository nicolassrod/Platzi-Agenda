//
//  Agenda.swift
//  Platzi Agenda
//
//  Created by Nicolás A. Rodríguez on 5/16/20.
//  Copyright © 2020 Nicolás A. Rodríguez. All rights reserved.
//

import Foundation

// MARK: - AgendaCourse
struct AgendaCourse: Codable, Identifiable {
    let id: Int
    let course: Int
    let startTime: Date
    let endTime: Date
    let agendaItemType: AgendaItemType
    let liveSlug: String
    let details: Details
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case course = "course"
        case startTime = "start_time"
        case endTime = "end_time"
        case agendaItemType = "agenda_item_type"
        case liveSlug = "live_slug"
        case details = "details"
    }
}

