//
//  AgendaCourseView.swift
//  Platzi Agenda
//
//  Created by Nicolás A. Rodríguez on 5/19/20.
//  Copyright © 2020 Nicolás A. Rodríguez. All rights reserved.
//

import SwiftUI

struct AgendaCourseView: View {
    @Binding var showCurseSheet: Bool
    let course: AgendaCourse
    @State private var activeSheet: ActiveSheet = .video
    @State private var showMoreInformationSheet: Bool = false
    
    private enum ActiveSheet {
        case video, landingPage
    }
    
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 32) {
                    Image("adwords")
                        .resizable()
                        .fetchingRemoteImage(from: course.details.badge)
                        .aspectRatio(1/1, contentMode: .fit)
                        .frame(width: 85, alignment: .center)
                    Text(course.details.title)
                        .font(.title)
                        .fontWeight(.bold)
                        .lineLimit(nil)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    Text(course.details.detailsDescription)
                        .font(.body)
                        .fontWeight(.regular)
                        .lineLimit(nil)
                        .padding()
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    Text(course.startTime.asPrettyString())
                        .foregroundColor(.yellow)
                    HStack(alignment: .center, spacing: 30) {
                        Button(action: { self.activeSheet = .video; self.showMoreInformationSheet.toggle() }) {
                            Text("Video")
                                .fontWeight(.bold)
                                .padding(.horizontal)
                                .padding(.vertical, 5)
                                .foregroundColor(Color("Secondary"))
                                .font(.headline)
                                .frame(minWidth: 80, alignment: .center)
                                .background(Color("Primary"))
                                .cornerRadius(7)
                        }
                        Button(action: { self.activeSheet = .landingPage; self.showMoreInformationSheet.toggle() }) {
                            Text("Go")
                                .fontWeight(.bold)
                                .padding(.horizontal)
                                .padding(.vertical, 5)
                                .foregroundColor(Color("Secondary"))
                                .font(.headline)
                                .frame(minWidth: 80, alignment: .center)
                                .background(Color("Primary"))
                                .cornerRadius(7)
                        }
                        Button(action: { self.showCurseSheet.toggle() }) {
                            Text("Ok")
                                .fontWeight(.bold)
                                .padding(.horizontal)
                                .padding(.vertical, 5)
                                .foregroundColor(Color("Secondary"))
                                .font(.headline)
                                .frame(minWidth: 80, alignment: .center)
                                .background(Color("Primary"))
                                .cornerRadius(7)
                        }
                    }
                }.padding(.vertical, 50)
            }.padding(.horizontal)
        }.background(
            ZStack {
                Image("adwords-background")
                    .resizable()
                    .fetchingRemoteImage(from: course.details.socialImageURL)
                    .scaleEffect(1.5)
                    .blur(radius: 25)
                Rectangle()
                    .fill(Color.black)
                    .blendMode(.overlay)
                    .scaleEffect(1.5)
            }
        ).sheet(isPresented: $showMoreInformationSheet) {
            if self.activeSheet == .landingPage {
                SafariView(url: URL(string: "https://platzi.com\(self.course.details.url)")!)
            } else {
                SafariView(url: URL(string: "http://youtube.com/watch?v=\(self.course.details.video ?? "NKtTJi8Bp6I")")!)
            }
        }
    }
}

//struct AgendaCourseView_Previews: PreviewProvider {
//    static var previews: some View {
//        AgendaCourseView()
//    }
//}
