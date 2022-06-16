//
//  moreInfoDetails.swift
//  Scam-Detector
//
//  Created by VARUN SIDHU on 2022-06-13.
//


/*
 This page includes more information like what scam is, how to prevent etc for any selected scam.
 */
import Foundation
import SwiftUI


struct MoreInfoDetails:View{
    // it is used to pass data and id from json file for the selected scam type.
    let data: ScamInfo
    
    var body: some View{
        ZStack{
            Color(red: 192 / 255, green: 223 / 255, blue: 161 / 255)
                    .edgesIgnoringSafeArea(.all)

            VStack{
                Text(data.scamType)
                    .foregroundColor(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                    .font(.system(size: 45, weight: .bold))
                    .padding(.top, -40)
                
                
                ScrollView{
                    // Image related to scam type
                    Image(data.moreInfo.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 350, height: 200)
                        .padding()
                    
                    // For email scam, data.id = 1
                    if(data.id == 1){
                        VStack(alignment: .leading){
                            Group{
                                Text(data.moreInfo.whatItIs.section1!)
                                    .padding()
                                Text("**\(data.moreInfo.whatItIs.section2!)**\(data.moreInfo.whatItIs.section3!)")
                                    .padding()
                                Text(data.moreInfo.whatItIs.section4!)
                                    .padding()
                                Text(data.moreInfo.whatItIs.section5!)
                                    .padding()
                                Text("**\(data.moreInfo.whatItIs.section6!)**\(data.moreInfo.whatItIs.section7!)")
                                    .padding()
                                Text(data.moreInfo.whatItIs.section8!)
                                    .padding()
                                Text(data.moreInfo.whatItIs.section9!)
                                    .padding()
                                Text("**\(data.moreInfo.whatItIs.section10!)**\(data.moreInfo.whatItIs.section11!)")
                                    .padding()
                                Text(data.moreInfo.whatItIs.section12!)
                                    .padding()
                                Text(data.moreInfo.whatItIs.section13!)
                                    .padding()
                            }
                            Group{
                                Text("**\(data.moreInfo.whatItIs.section14!)**\(data.moreInfo.whatItIs.section15!)")
                                    .padding()
                                Text(data.moreInfo.whatItIs.section16!)
                                    .padding()
                                VStack{
                                    Text(data.moreInfo.whatItIs.section17!)
                                        .frame(maxWidth: .infinity, alignment: .center)
                                        .padding()
                                        .font(.system(size: 30, weight: .bold))
                                }.frame(maxWidth: .infinity, alignment: .center)
                                Text("**\(data.moreInfo.whatItIs.section18!)**\(data.moreInfo.whatItIs.section19!)")
                                    .padding()
                                Text("**\(data.moreInfo.whatItIs.section20!)**\(data.moreInfo.whatItIs.section21!)")
                                    .padding()
                                Text("**\(data.moreInfo.whatItIs.section22!)**\(data.moreInfo.whatItIs.section23!)")
                                    .padding()
                            }
                            Group{
                                Text("What To Do")
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .font(.system(size: 35, weight: .bold))
                                Text(data.moreInfo.whatToDo.section1!)
                                    .padding()
                                Text(data.moreInfo.whatToDo.section2!)
                                    .padding()
                                Text(data.moreInfo.whatToDo.section3!)
                                    .padding()
                                Text("How to Prevent")
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .font(.system(size: 35, weight: .bold))
                                Text("**\(data.moreInfo.prevention.section1!)**\(data.moreInfo.prevention.section2!)")
                                    .padding()
                                Text("**\(data.moreInfo.prevention.section3!)**\(data.moreInfo.prevention.section4!)")
                                    .padding()
                                Text("**\(data.moreInfo.prevention.section5!)**\(data.moreInfo.prevention.section6!)")
                                    .padding()
                            }
                            Group{
                                // Links
                                Text("Links to additional information: ")
                                    .font(.system(size: 30, weight: .bold))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding()
                                
                                // Link 1
                                Link(destination: URL(string: data.moreInfo.link1)!) {
                                    Text("Link 1")
                                        .frame(width: 375, height: 80, alignment: .center)
                                        .background(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                        .font(.system(size: 35))
                                }
                                .padding()
                                .shadow(color: .gray, radius: 5, x: 0, y: 5)
                                
                                // Link 2
                                Link(destination: URL(string: data.moreInfo.link2!)!) {
                                    Text("Link 2")
                                        .frame(width: 375, height: 80, alignment: .center)
                                        .background(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                        .font(.system(size: 35))
                                } .padding().shadow(color: .gray, radius: 5, x: 0, y: 5)
                            }
                        }
                        .font(.system(size: 25))
                    } // For phone scam, data.id = 2
                    else if(data.id == 2){
                        VStack(alignment: .leading){
                            Group{
                                Text(data.moreInfo.whatItIs.section1!)
                                    .padding()
                                Text("**\(data.moreInfo.whatItIs.section2!)**\(data.moreInfo.whatItIs.section3!)")
                                    .padding()
                                Text("**\(data.moreInfo.whatItIs.section4!)**\(data.moreInfo.whatItIs.section5!)")
                                    .padding()
                                Text(data.moreInfo.whatItIs.section6!)
                                    .padding()
                                Text(data.moreInfo.whatItIs.section7!)
                                    .padding()
                                Text("**\(data.moreInfo.whatItIs.section8!)**\(data.moreInfo.whatItIs.section9!)")
                                    .padding()
                                Text(data.moreInfo.whatItIs.section10!)
                                    .padding()
                                Text(data.moreInfo.whatItIs.section11!)
                                    .padding()
                                Text("**\(data.moreInfo.whatItIs.section12!)**\(data.moreInfo.whatItIs.section13!)")
                                    .padding()
                                Text(data.moreInfo.whatItIs.section14!)
                                    .padding()
                            }
                            Group{
                                Text(data.moreInfo.whatItIs.section15!)
                                    .padding()
                                Text("**\(data.moreInfo.whatItIs.section16!)**\(data.moreInfo.whatItIs.section17!)")
                                    .padding()
                                Text(data.moreInfo.whatItIs.section18!)
                                    .padding()
                                Text(data.moreInfo.whatItIs.section19!)
                                    .padding()
                                Text("**\(data.moreInfo.whatItIs.section20!)**\(data.moreInfo.whatItIs.section21!)")
                                    .padding()
                                Text(data.moreInfo.whatItIs.section22!)
                                    .padding()
                                Text("**\(data.moreInfo.whatItIs.section23!)**\(data.moreInfo.whatItIs.section24!)")
                                    .padding()
                                Text(data.moreInfo.whatItIs.section25!)
                                    .padding()
                                Text(data.moreInfo.whatItIs.section26!)
                                    .padding()
                            }
                            Group{
                                Text(data.moreInfo.whatItIs.section27!)
                                    .padding()
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .font(.system(size: 30, weight: .bold))
                                Text("**\(data.moreInfo.whatItIs.section28!)**\(data.moreInfo.whatItIs.section29!)")
                                    .padding()
                                Text("**\(data.moreInfo.whatItIs.section30!)**\(data.moreInfo.whatItIs.section31!)")
                                    .padding()
                                Text("**\(data.moreInfo.whatItIs.section32!)**\(data.moreInfo.whatItIs.section33!)")
                                    .padding()
                                Text("What To Do")
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .font(.system(size: 35, weight: .bold))
                                Text(data.moreInfo.whatToDo.section1!)
                                    .padding()
                                Text(data.moreInfo.whatToDo.section2!)
                                    .padding()
                                Text("How to Prevent")
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .font(.system(size: 35, weight: .bold))
                                Text(data.moreInfo.prevention.section1!)
                                    .padding()
                                Text(data.moreInfo.prevention.section2!)
                                    .padding()
                            }
                            Group{
                                // Links
                                Text("Links to additional information: ")
                                    .font(.system(size: 30, weight: .bold))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding()
                                
                                // Link 1
                                Link(destination: URL(string: data.moreInfo.link1)!) {
                                    Text("Link 1")
                                        .frame(width: 375, height: 80, alignment: .center)
                                        .background(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                        .font(.system(size: 35))
                                }
                                .padding()
                                .shadow(color: .gray, radius: 5, x: 0, y: 5)
                                
                                // Link 2
                                Link(destination: URL(string: data.moreInfo.link2!)!) {
                                    Text("Link 2")
                                        .frame(width: 375, height: 80, alignment: .center)
                                        .background(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                        .font(.system(size: 35))
                                }
                                .padding()
                                .shadow(color: .gray, radius: 5, x: 0, y: 5)
                                
                                // Link 3
                                Link(destination: URL(string: data.moreInfo.link3!)!) {
                                    Text("Link 3")
                                        .frame(width: 375, height: 80, alignment: .center)
                                        .background(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                        .font(.system(size: 35))
                                }
                                .padding()
                                .shadow(color: .gray, radius: 5, x: 0, y: 5)
                            }
                        }
                        .font(.system(size: 25))
                    } //For in-person scam, data.id = 3
                    else if(data.id == 3){
                        VStack(alignment: .leading){
                            Group{
                                Text(data.moreInfo.whatItIs.section1!)
                                    .padding()
                                Text(data.moreInfo.whatItIs.section2!)
                                    .padding()
                                Text(data.moreInfo.whatItIs.section3!)
                                    .padding()
                                Text(data.moreInfo.whatItIs.section4!)
                                    .padding()
                                Text(data.moreInfo.whatItIs.section5!)
                                    .padding()
                            }
                            Group{
                                Text("What To Do")
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .font(.system(size: 35, weight: .bold))
                                Text(data.moreInfo.whatToDo.section1!)
                                    .padding()
                                Text("How to Prevent")
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .font(.system(size: 35, weight: .bold))
                                Text(data.moreInfo.prevention.section1!)
                                    .padding()
                                Text(data.moreInfo.prevention.section2!)
                                    .padding()
                            }
                            Group{
                                // Links
                                Text("Links to additional information: ")
                                    .font(.system(size: 30, weight: .bold))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding()
                                
                                // Link 1
                                Link(destination: URL(string: data.moreInfo.link1)!) {
                                    Text("Link 1")
                                        .frame(width: 375, height: 80, alignment: .center)
                                        .background(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                        .font(.system(size: 35))
                                }
                                .padding()
                                .shadow(color: .gray, radius: 5, x: 0, y: 5)
                                
                                // Link 2
                                Link(destination: URL(string: data.moreInfo.link2!)!) {
                                    Text("Link 2")
                                        .frame(width: 375, height: 80, alignment: .center)
                                        .background(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                        .font(.system(size: 35))
                                } .padding().shadow(color: .gray, radius: 5, x: 0, y: 5)
                            }
                        }
                        .font(.system(size: 25))
                    }else{
                        Text("Error.!!!")
                            .font(.system(size: 40, weight: .bold))
                    }
                }
            }.padding()
        }
    }
}


// Ref:
// To navigate to url: https://www.hackingwithswift.com/quick-start/swiftui/how-to-open-web-links-in-safari
// To bold some text: https://stackoverflow.com/questions/61671313/making-parts-of-text-bold-in-swiftui