//
//  AboutUsView.swift
//  USC-KSEA-iOSApp
//
//  Created by Donggun Lee on 9/27/24.
//

import SwiftUI

struct AboutUsView: View {
    let letterColor = Color(red: 0.62, green: 0.13, blue: 0.21)
    
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
                            VStack (spacing: 10){
                                VStack (spacing: 10){
                                    Text("About Us")
                                        .font(.title)
                                        .bold()
                                        .foregroundColor(letterColor)
                                        .padding(.top, 20)
                                        .padding(.bottom, 10)
                                    
                                    Image("aboutus")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: geometry.size.width * 0.8)
                                        .cornerRadius(15)
                                        .padding(.bottom, 20)
                                    
                                    Text("KSEA")
                                        .font(.title)
                                        .bold()
                                        .foregroundColor(letterColor)
                                    + Text(" stands for ")
                                        .bold()
                                        .font(.title)
                                    Text("Korean-American Scientists and \nEngineers Association")
                                        .bold()
                                        .multilineTextAlignment(.center)
                                        .font(.body)
                                    
                                    
                                    Text("We are a community of students & professionals across\n the country with interest in STEM & Korean culture.")
                                        .font(.system(size: 12))
                                        .multilineTextAlignment(.center)
                                }
                                Text("At the local scale:")
                                    .foregroundColor(letterColor)
                                    .bold()
                                    .frame(maxWidth: geometry.size.width, alignment: .leading)
                                    .padding(.leading, geometry.size.width * 0.1)
                                    .padding(.top, 20)
                                
                                
                                Text("We are the USC Young Generation (YG) group of KSEA. We serve the Trojan family through a variety of events and newsletters.")
                                    .frame(maxWidth: geometry.size.width, alignment: .leading)
                                    .padding(.leading, geometry.size.width * 0.1)
                                    .padding(.trailing, geometry.size.width * 0.1)
                                
                                RoundedRectangle(cornerRadius:80)
                                    .fill(Color.yellow)
                                    .frame(width: 350, height: 200)
                                    .overlay(
                                        RoundedRectangle(cornerRadius:80)
                                            .fill(Color.white)
                                            .frame(width: 330, height: 180)
                                            .overlay (
                                                HStack {
                                                    VStack {
                                                        Text("Events")
                                                            .font(.headline)
                                                            .padding()
                                                        
                                                    }
                                                    
                                                    VStack{
                                                        Text("Newsletters")
                                                            .font(.headline)
                                                            .padding()
                                                    }
                                                } // HStack
                                                
                                            )
                                    )
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
    AboutUsView()
}
