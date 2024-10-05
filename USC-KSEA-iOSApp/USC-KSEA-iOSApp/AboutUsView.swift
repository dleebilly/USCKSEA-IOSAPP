//
//  AboutUsView.swift
//  USC-KSEA-iOSApp
//
//  Created by Donggun Lee on 9/27/24.
//

import SwiftUI

struct AboutUsView: View {
    let letterColor = Color(red: 0.62, green: 0.13, blue: 0.21)
    let text = "\nIn addition to working professionals in KSEA, there are several student and young professional-led KSEA chapters across the country called Young Generation (YG) groups. YG groups work within their respective local chapters and universities to serve their communities while working with the KSEA YG National Board and other groups to maintain active communication between students around the United States. As of 2021-2022, more than 20 YG groups are active, with 50+ groups documented during KSEA's history. Participating groups in the KSEA network are shown below and also listed in the main [KSEA Website](https://www.ksea.org)."
    
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
                                
                                // Yellow Ring
                                RoundedRectangle(cornerRadius:80)
                                    .fill(Color.yellow)
                                    .frame(width: 380, height: 200)
                                    .overlay(
                                        RoundedRectangle(cornerRadius:80)
                                            .fill(Color.white)
                                            .frame(width: 370, height: 190)
                                            .overlay (
                                                HStack {
                                                    VStack (alignment: .leading){
                                                        Text("Events")
                                                            .font(.headline)
                                                            .padding(.bottom, 2)
                                                        VStack (alignment: .leading, spacing: 0){
                                                            Text("• Career Development")
                                                            Text("• Mentorship")
                                                            Text("• Networking")
                                                            Text("• Volunteer Activities")
                                                            Text("• And More!")
                                                        }.font(.subheadline)
                                                    }
                                                    
                                                    VStack (alignment: .leading){
                                                        Text("Newsletters")
                                                            .font(.headline)
                                                            .padding(.bottom, 2)
                                                        VStack(alignment: .leading, spacing: 0){
                                                            Text("• Job Openings")
                                                            Text("• Scholarships")
                                                            Text("• Internships")
                                                            Text("• Research Opportunities")
                                                            Text("• Conference Invitations")
                                                        }.font(.subheadline)
                                                    }
                                                } // HStack
                                                
                                            )   // Inner white overlay
                                    )   // Yellow overlay
                                
                                
                                Text("At the national scale:")
                                    .foregroundColor(letterColor)
                                    .bold()
                                    .frame(maxWidth: geometry.size.width, alignment: .leading)
                                    .padding(.leading, geometry.size.width * 0.1)
                                    .padding(.top, 20)
                                
                                VStack {
                                    Text("KSEA was estabalished in 1971 as a non-profit professional organization and has grown to over 5000 registered members with 67 local chapters and branches, 30 afilliated professional societies, and 14 technical groups across the United States. KSEA's vision is to become a premier professional organization which fosters international cooperation between the U.S. and Korea, cares for its members, and serves the community.")

                                    Text(.init(text))
                                    
                                    Text("\nUSC KSEA is proud to have named ")
                                    + Text("YG Group of the Year")
                                        .foregroundColor(.yellow)
                                        .bold()
                                    + Text(" in both 2020-21 and 2021-22 Academic Years.")
                                    
                                    Text("\nKSEA is also a ")
                                    + Text("Presidential Volunteer Service Award (PVSA)")
                                        .bold()
                                    + Text("certified organization, which can recognize students, young adults, and professionals who dedicate time to KSEA-related activities for volunteerism. USC students who actively participate in KSEA activities will be nominated by our executive board for qualifying awards at the end of the school year.\n")
                                } // VStack text
                                .frame(maxWidth: geometry.size.width, alignment: .leading)
                                    .padding(.leading, geometry.size.width * 0.1)
                                    .padding(.trailing, geometry.size.width * 0.1)
                                
                                Image("image 6")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: geometry.size.width * 0.8)
                                    .cornerRadius(15)
                                    .padding(.bottom, 20)
                                
                                Image("logoksea")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: geometry.size.width * 0.1)

                                Text("We are the USC chapter of the Korean-American Scientists and Engineers Association (KSEA).\n\nOur purpose is to promote career development, mentorship, networking, and volunteer service within the Korean and American STEM communities at USC.")
                                    .padding(.leading, geometry.size.width * 0.15)
                                    .padding(.trailing, geometry.size.width * 0.15)
                                    .font(.system(size: 14))
                                    .foregroundColor(.gray)
                                    .multilineTextAlignment(.center)
                                Spacer()
                            } // VStack
                            
                            
                        } // ScrollView
                        .padding(.bottom, geometry.size.height * 0.22) // Adjust this to put content over the footer
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
