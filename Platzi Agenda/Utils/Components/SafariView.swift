//
//  SafariView.swift
//  Platzi Agenda
//
//  Created by Nicolás A. Rodríguez on 5/20/20.
//  Copyright © 2020 Nicolás A. Rodríguez. All rights reserved.
//

import Foundation
import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        let safariVC = SFSafariViewController(url: url)
        safariVC.preferredBarTintColor = UIColor(named: "Type")
        safariVC.preferredControlTintColor = UIColor(named: "Primary")
        return safariVC
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
}
