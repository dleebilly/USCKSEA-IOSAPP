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
                        ScrollView{
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
                                
                                HStack {
                                    Image("groupksea")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 180, height: 180)
                                        .clipShape(Circle())
                                        .overlay(Circle().stroke(Color.white, lineWidth: 4))
                                        .padding()
                                    ZStack {
                                        Image("Vector 1")
                                            .resizable()
                                            .scaledToFit()
                                        
                                        VStack (alignment: .leading) {
                                            Text("Membership Benefits")
                                                .font(.title)
                                                .bold()
                                                .foregroundColor(Color(red: 0.62, green: 0.13, blue: 0.21))
                                                .padding(.top, 20)
                                            Text("Active members will receive early notification for events and priority for closed events and may qualify for the sponsorship for the Presidential Volunteers Service Award (PVSA) upon review.")
                                                .font(.system(size: 14))
                                                .padding(.trailing, 40)
                                        }
                                        .padding(.leading, 0)
                                        
                                    }
                                }
                                .padding(.top, 30)
                                
                                
                                
                                Text("How to Join")
                                    .font(.system(size:24))
                                    .bold()
                                    .foregroundColor(Color(red: 0.62, green: 0.13, blue: 0.21))
                                    .padding(.top, 20)
                                
                                // Yellow
                                RoundedRectangle(cornerRadius:80)
                                    .fill(Color.yellow)
                                    .frame(width: 360, height: 800)
                                    .overlay(
                                        RoundedRectangle(cornerRadius:80)
                                            .fill(Color.white)
                                            .frame(width: 340, height: 780)
                                            .overlay (
                                                
                                                VStack (alignment: .leading){
                                                    
                                                    HStack (alignment: .top){
                                                        Text("1.")
                                                        VStack (alignment: .leading) {
                                                            Text("Register into the national KSEA organization")
                                                                .bold()
                                                            Text("(Chapter Southern California)")
                                                                .foregroundColor(.gray)
                                                            
                                                        } // Vstack
                                                    } // HStack
                                                    
                                                }   // VStack
                                                
                                            )   // Inner white overlay
                                    )// Yellow overlay
                                    
                            } // Vstack
                        } // ScrollView
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
