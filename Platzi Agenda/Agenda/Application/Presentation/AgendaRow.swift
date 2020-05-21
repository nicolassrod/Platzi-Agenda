//
//  AgendaRow.swift
//  Platzi Agenda
//
//  Created by Nicolás A. Rodríguez on 5/19/20.
//  Copyright © 2020 Nicolás A. Rodríguez. All rights reserved.
//

import SwiftUI

struct AgendaRow: View {
    let badgeUrl: String
    let title: String
    let date: Date
    let description: String
    let sessionType: AgendaItemType
    
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: "adwords")
                .fetchingRemoteImage(from: badgeUrl)
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
            
            VStack(alignment: .leading) {
                HStack(alignment: .firstTextBaseline) {
                    Text(title)
                        .font(.headline)
                        .fontWeight(.bold)
                    Spacer()
                    Text(date.asShortString())
                }
                
                Text(description)
                    .lineLimit(5)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 6)
                
                Text("") // Don't delete this, this repare a bug between ScrollView and Text above
                
                HStack(alignment: .top) {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            Tag(type: sessionType)
                        }
                    }
                }
            }
        }.padding(.bottom, 10)
    }
}

struct AgendaRow_Previews: PreviewProvider {
    static var previews: some View {
        AgendaRow(
        badgeUrl: "https://static.platzi.com/media/achievements/badge-excel-financiero-cc798af1-325a-4e31-9866-3c3479183129.png",
        title: "Curso de Excel Financiero",
        date: Date(),
        description: "Domina Excel para realizar anlisis, calculos y pronosticos con los datos financieros de una empresa.  Conoce las buenas practicas para gestionar datos en hojas de calculo. Realiza analisis de estados financieros de empresas con Excel.",
        sessionType: AgendaItemType(rawValue: "course_launch")!)
    }
}
