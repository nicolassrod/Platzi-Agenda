//
//  AgendaView.swift
//  Platzi Agenda
//
//  Created by Nicolás A. Rodríguez on 5/19/20.
//  Copyright © 2020 Nicolás A. Rodríguez. All rights reserved.
//

import SwiftUI

struct AgendaView: View {
    @ObservedObject var viewModel =
    AgendaViewModel(getAllCoursesInAgendaUseCase:
        GetAllCoursesInAgenda(repository: AgendaRepository())
    )
    @State private var selectedRow: AgendaCourse? = nil
    @State private var showCurseSheet: Bool = false
    
    var body: some View {
        NavigationView {
            List(viewModel.courses, id: \.id) { (course: AgendaCourse) in
                AgendaRow(
                    badgeUrl: course.details.badge,
                    title: course.details.title,
                    date: course.startTime,
                    description: course.details.detailsDescription,
                    sessionType: course.agendaItemType)
                .onTapGesture {
                    self.selectedRow = course
                    self.showCurseSheet.toggle()
                }
            }.navigationBarTitle("Platzi Agenda")
            .background(courseSheet)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
    
    var courseSheet: some View {
        EmptyView().sheet(isPresented: $showCurseSheet) {
            AgendaCourseView(showCurseSheet: self.$showCurseSheet, course: self.selectedRow!)
        }
    }
}

struct AgendaView_Previews: PreviewProvider {
    static var previews: some View {
        AgendaView()
    }
}
