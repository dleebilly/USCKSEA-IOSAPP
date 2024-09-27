//
//  HomeView.swift
//  USC-KSEA-iOSApp
//
//  Created by Donggun Lee on 9/27/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                RoundedRectangle(cornerRadius: 50)
                    .fill(Color.yellow.opacity(1.0))
                    .frame(width: geometry.size.width, height: geometry.size.height)
                
                RoundedRectangle(cornerRadius: 50)
                    .fill(Color.white)
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .offset(y: geometry.size.height / 40)
                    .overlay(
                        VStack{
                            Text("Explore The Club")
                                .font(.title)
                                .bold()
                                .foregroundColor(Color(red: 0.62, green: 0.13, blue: 0.21))
                                .padding(.top, 20)
                            HStack {
                                Image("kbbq")
                                    .resizable()
                                    .cornerRadius(15)
                                    .scaledToFit()
                                    .frame(height: 180)
                                
                                VStack {
                                    Image("beach")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 80)
                                        .cornerRadius(15)
                                    Image("springgm")
                                        .resizable()
                                        .cornerRadius(15)
                                        .scaledToFit()
                                        .frame(width: 120)
                                }
                            }
                        } // VStack
                            .padding(.top, 20)
                            ,alignment: .top
                    ) // Overlay
            } // ZStack
        }
    }
}

#Preview {
    HomeView()
}
