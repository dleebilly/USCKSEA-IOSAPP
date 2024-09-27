//
//  Footer.swift
//  USC-KSEA-iOSApp
//
//  Created by Donggun Lee on 9/27/24.
//

import SwiftUI

struct Footer: View {
    @Binding var selectedTab: Tab
    var body: some View {
        GeometryReader { geometry in
            
            
            VStack(spacing: 0) {
                Spacer()
                Rectangle()
                    .foregroundColor(.clear)
                    .background(Color(red:1, green:0.78, blue: 0.17))
                    .frame(height: geometry.size.height*0.02)
                ZStack { // Red background
                    Rectangle()
                        .foregroundColor(.clear)
                        .background(Color(red: 0.62, green: 0.13, blue: 0.21))
                        .frame(height: geometry.size.height * 0.1)
                    HStack {
                        Button {
                            selectedTab = .HomeView
                        } label: {
                            Image(selectedTab == .HomeView ? "home-g" : "home-w")
                        }
                        Divider()
                            .frame(width: 1.5, height: 30)
                            .background(Color.white)
                            .padding(.horizontal, geometry.size.width * 0.03)
                        
                        Button {
                            selectedTab = .AboutUsView
                        } label: {
                            Image(selectedTab == .AboutUsView ? "help-g" : "help-w")
                        }
                        Divider()
                            .frame(width: 1.5, height: 30)
                            .background(Color.white)
                            .padding(.horizontal, geometry.size.width * 0.03)
                        Button {
                            selectedTab = .EBoardView
                        } label: {
                            Image(selectedTab == .EBoardView ? "profile-g" : "profile-w")
                        }
                        Divider()
                            .frame(width: 1.5, height: 30)
                            .background(Color.white)
                            .padding(.horizontal, geometry.size.width * 0.03)
                        Button {
                            selectedTab = .GalleryView
                        } label: {
                            Image(selectedTab == .GalleryView ? "picture-g" : "picture-w")
                        }
                        Divider()
                            .frame(width: 1.5, height: 30)
                            .background(Color.white)
                            .padding(.horizontal, geometry.size.width * 0.03)
                        Button {
                            selectedTab = .ContactUsView
                        } label: {
                            Image(selectedTab == .ContactUsView ? "email-g" : "email-w")
                        }

                    }// HStack
                    
                } // ZStack
            } // VStack
            
        }
    }
}

#Preview {
    Footer(selectedTab: .constant(.HomeView))
}

enum Tab {
    case HomeView, GalleryView, ContactUsView, EBoardView, AboutUsView
}
