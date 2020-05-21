//
//  AgendaViewModel.swift
//  Platzi Agenda
//
//  Created by Nicolás A. Rodríguez on 5/19/20.
//  Copyright © 2020 Nicolás A. Rodríguez. All rights reserved.
//

import Foundation
import Combine

class AgendaViewModel: ObservableObject {
    private var disposables = Set<AnyCancellable>()
    private let getAllCoursesInAgendaUseCase: GetAllCoursesInAgenda
    @Published private(set) var courses: [AgendaCourse] = []
    
    init(getAllCoursesInAgendaUseCase: GetAllCoursesInAgenda) {
        self.getAllCoursesInAgendaUseCase = getAllCoursesInAgendaUseCase
        getCourses()
    }
    
    func getCourses() {
        getAllCoursesInAgendaUseCase
            .get()
            .receive(on: RunLoop.main)
            .sink(receiveCompletion: { print($0) }) { result in
                self.courses = result
                print(result)
        }.store(in: &disposables)
    }
}
