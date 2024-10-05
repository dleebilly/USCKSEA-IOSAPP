//
//  HomeView.swift
//  USC-KSEA-iOSApp
//
//  Created by Donggun Lee on 9/27/24.
//

import SwiftUI

struct HomeView: View {
    
    let burgundy = Color(red: 157/255, green: 33/255, blue: 53/255)
    @State private var fullname: String = ""
    @State private var email: String = ""
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
                                    .padding(.top, 40)
                                
                                // Yellow
                                RoundedRectangle(cornerRadius:80)
                                    .fill(Color.yellow)
                                    .frame(width: 360, height: 520)
                                    .overlay(
                                        RoundedRectangle(cornerRadius:80)
                                            .fill(Color.white)
                                            .frame(width: 350, height: 510)
                                            .overlay (
                                                
                                                VStack (alignment: .leading){
                                                    
                                                    HStack (alignment: .top){
                                                        Text("1.")
                                                        VStack (alignment: .leading, spacing: 10) {
                                                            Text("Register into the national KSEA organization")
                                                                .bold()
                                                            Text("(Chapter Southern California)")
                                                                .foregroundColor(.gray)
                                                            
                                                            Button(action: {
                                                                if let url = URL(string: "https://www.ksea.org/signUp") {
                                                                    UIApplication.shared.open(url)
                                                                }
                                                            }) {
                                                                Text("Register")
                                                                    .foregroundColor(.white)
                                                                    .bold()
                                                                    .padding()
                                                                    .frame(width: 110, height: 30)
                                                                    .background(burgundy)
                                                                    .cornerRadius(30)
                                                            }
                                                        }
                                                        .padding(.bottom, 20)// Vstack
                                                    } // HStack
                                                    
                                                    HStack (alignment: .top){
                                                        Text("2.")
                                                        VStack (alignment: .leading, spacing: 10){
                                                            Text("Subscribe to our newsletter!")
                                                                .bold()
                                                            TextField("Full Name", text: $fullname)
                                                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                                                .frame(width: 210, height: 25)
                                                                .font(.system(size: 16))
                                                                .overlay(
                                                                    RoundedRectangle(cornerRadius: 5)
                                                                        .stroke(Color.black, lineWidth: 0.5)
                                                                )
                                                            TextField("Email Address", text: $email)
                                                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                                                .frame(width: 210, height: 25)
                                                                .font(.system(size: 16))
                                                                .overlay(
                                                                    RoundedRectangle(cornerRadius: 5)
                                                                        .stroke(Color.black, lineWidth: 0.5)
                                                                )
                                                            Button(action: {
                                                                if let url = URL(string: "https://www.ksea.org") {
                                                                    UIApplication.shared.open(url)
                                                                }
                                                            }) {
                                                                Text("Subscribe")
                                                                    .foregroundColor(.white)
                                                                    .bold()
                                                                    .padding()
                                                                    .frame(width: 140, height: 30)
                                                                    .background(burgundy)
                                                                    .cornerRadius(30)
                                                            }.padding(.top, 10)
                                                            
                                                        }
                                                    }
                                                    HStack (alignment: .top){
                                                        Text("3.")
                                                        VStack (alignment: .leading, spacing: 10) {
                                                            Text("Attend at least 2 events during the school year")
                                                                .bold()
                                                            Text("(Must be renewed every school year")
                                                                .foregroundColor(.gray)
                                                        } // 3 Vstack
                                                    } // Hstack
                                                    
                                                }   // VStack for How to Join
                                                
                                            )   // Inner white overlay
                                    )// Yellow overlay
                                
                                Text("How to Join")
                                    .font(.system(size:24))
                                    .bold()
                                    .foregroundColor(Color(red: 0.62, green: 0.13, blue: 0.21))
                                    .padding(.top, 20)
                                
                                HStack {
                                    Button(action: {
                                        if let url = URL(string: "https://www.instagram.com/usc.ksea/") {
                                            UIApplication.shared.open(url)
                                        }
                                    }) {
                                        Image("instagram")
                                    }
                                    
                                    Button(action: {
                                        if let url = URL(string: "https://www.linkedin.com/company/ksea/") {
                                            UIApplication.shared.open(url)
                                        }
                                    }) {
                                        Image("linkedin")
                                    }
                                    Button(action: {
                                        if let url = URL(string: "https://www.facebook.com/uscksea/") {
                                            UIApplication.shared.open(url)
                                        }
                                    }) {
                                        Image("facebook")
                                    }
                                    Button(action: {
                                        if let url = URL(string: "https://discord.com/channels/798417333928198164/804778495237947418") {
                                            UIApplication.shared.open(url)
                                        }
                                    }) {
                                        Image("discord")
                                    }
                                } // HStack for SNS buttons
                                
                                Image("logoksea")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: geometry.size.width * 0.1)
                                    .padding(.top, 40)
                                
                                Text("We are the USC chapter of the Korean-American Scientists and Engineers Association (KSEA).\n\nOur purpose is to promote career development, mentorship, networking, and volunteer service within the Korean and American STEM communities at USC.")
                                    .padding(.leading, geometry.size.width * 0.15)
                                    .padding(.trailing, geometry.size.width * 0.15)
                                    .padding(.top, 20)
                                    .font(.system(size: 14))
                                    .foregroundColor(.gray)
                                    .multilineTextAlignment(.center)
                                
                            } // Vstack
                        } // ScrollView
                        .padding(.bottom, geometry.size.height * 0.24)  // Adjust this to put content over the footer
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
