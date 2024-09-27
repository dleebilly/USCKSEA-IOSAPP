//
//  ContentView.swift
//  USC-KSEA-iOSApp
//
//  Created by Donggun Lee on 9/26/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedTab: Tab = .HomeView
    
    var body: some View {
        GeometryReader{geometry in
            ZStack{
                VStack{ // background
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: geometry.size.width, height: geometry.size.height*0.5)
                        .background(
                            Image("IMG_2038")
                                .resizable()
                                .scaledToFill()
                                .edgesIgnoringSafeArea(.all)
                                .overlay(
                                    Color(red: 0.62, green: 0.13, blue: 0.21).opacity(0.70)
                                )
                        )
                    Spacer().frame(height:geometry.size.height * 0.6)
                } // VStack
                VStack {
                    Spacer().frame(height:28)
                    Image("Sash Logo 1")
                        .padding(.top, 28)
                    
                    Text("KSEA USC")
                        .font(Font.custom("Mont", size:30))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .padding(.top, 0)
                    Text("Korean-American Scientists and Engineers Association at USC")
                        .font(Font.custom("Mont", size: 10))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red:1, green: 0.78, blue: 0.17))
                        .bold()
                        .padding(.top, 0)
                    Spacer().frame(height: 15)
                    
                    
                    switch selectedTab {
                    case .HomeView:
                        HomeView()
                    case .AboutUsView:
                        AboutUsView()
                    case .EBoardView:
                        EBoardView()
                    case .ContactUsView:
                        ContactUsView()
                    case .GalleryView:
                        GalleryView()
                    }
                    
                } // VStack
                .edgesIgnoringSafeArea(.top)

                
                
                
            } // ZStack
            Footer(selectedTab: $selectedTab)
        } // GeometryReader
    }
}

#Preview {
    ContentView()
}
