//
//  RemoteImageModifier.swift
//  Platzi Agenda
//
//  Created by Nicolás A. Rodríguez on 12/3/19.
//  Copyright © 2019 Nicolás A. Rodríguez. All rights reserved.
//

import SwiftUI
import class Kingfisher.KingfisherManager

struct RemoteImageModifier: ViewModifier {
    let url: String
    @State private var fetchedImage: UIImage? = nil

    func body(content: Content) -> some View {
        if let image = fetchedImage {
            return Image(uiImage: image)
                .resizable()
                .eraseToAnyView()
        }

        return content
            .onAppear(perform: fetch)
            .eraseToAnyView()
    }

    private func fetch() {
        guard let url = URL(string: url) else { return }
        KingfisherManager.shared.retrieveImage(with: url) { result in
            self.fetchedImage = try? result.get().image
        }
    }
}

extension View {
    func eraseToAnyView() -> AnyView {
        return AnyView(self)
    }
}
