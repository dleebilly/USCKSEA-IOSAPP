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
                            selectedTab = .ContentView
                        } label: {
                            Image(selectedTab == .ContentView ? "home-g" : "home-w")
                        }
                    }// HStack
                    
                } // ZStack
            } // VStack
            
        }
    }
}

#Preview {
    Footer(selectedTab: .constant(.ContentView))
}

enum Tab {
    case ContentView
}
