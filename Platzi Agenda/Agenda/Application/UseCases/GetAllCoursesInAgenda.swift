//
//  GetAllCoursesInAgenda.swift
//  Platzi Agenda
//
//  Created by Nicolás A. Rodríguez on 5/19/20.
//  Copyright © 2020 Nicolás A. Rodríguez. All rights reserved.
//

import Foundation
import Combine

struct GetAllCoursesInAgenda {
    let repository: AgendaRepositoryProtocol
    
    func get() -> AnyPublisher<[AgendaCourse], Error> {
        repository.getAll()
    }
}
