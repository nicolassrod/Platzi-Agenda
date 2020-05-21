//
//  Tag.swift
//  Platzi Agenda
//
//  Created by Nicolás A. Rodríguez on 12/3/19.
//  Copyright © 2019 Nicolás A. Rodríguez. All rights reserved.
//

import SwiftUI

struct Tag: View, Equatable {
    var type: AgendaItemType
    
    var body: some View {
        Group {
            if type == .courseLive {
                Text("Sesiones en vivo")
                    .font(.subheadline)
                    .padding([.top, .bottom], 2)
                    .padding([.leading, .trailing], 10)
                    .foregroundColor(.type)
                    .background(Color.liveSession)
                    .cornerRadius(15)
                    .opacity(0.9)
            }
            if type == .courseLaunch {
                Text("Lanzamiento de curso")
                .font(.subheadline)
                .padding([.top, .bottom], 2)
                .padding([.leading, .trailing], 10)
                .foregroundColor(.type)
                .background(Color.launching)
                .cornerRadius(15)
                .opacity(0.9)
            }
        }
    }
}

struct Tag_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 20) {
            Tag(type: .courseLive)
            Tag(type: .courseLaunch)
        }
    }
}
