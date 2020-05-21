//
//  Date.swift
//  Platzi Agenda
//
//  Created by Nicolás A. Rodríguez on 12/3/19.
//  Copyright © 2019 Nicolás A. Rodríguez. All rights reserved.
//

import Foundation

extension Date {
    func asShortString() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMd HH:mm"
        return dateFormatter.string(from: self)
    }
    
    func asPrettyString() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM d - h:mm a"
        return dateFormatter.string(from: self)
    }
}
