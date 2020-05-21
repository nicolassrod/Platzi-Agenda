//
//  AgendaRepository.swift
//  Platzi Agenda
//
//  Created by Nicolás A. Rodríguez on 5/19/20.
//  Copyright © 2020 Nicolás A. Rodríguez. All rights reserved.
//

import Foundation
import Combine


struct AgendaRepository: AgendaRepositoryProtocol {
    func getAll() -> AnyPublisher<[AgendaCourse], Error> {
        let decoder = JSONDecoder.init()
        decoder.dateDecodingStrategy = .iso8601
        
        return URLSession.shared.dataTaskPublisher(for: Constants.getAgendaCoursesUrl)
            .mapError { $0 as Error }
            .map { $0.data }
            .decode(type: [AgendaCourse].self, decoder: decoder)
            .eraseToAnyPublisher()
    }
}
