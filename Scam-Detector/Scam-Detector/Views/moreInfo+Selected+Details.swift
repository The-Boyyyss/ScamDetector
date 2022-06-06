//
//  moreInfo+Selected+Details.swift
//  Scam-Detector
//
//  Created by VARUN SIDHU on 2022-05-22.
//

import Foundation
import SwiftUI


struct moreInfoSelectedDetails:View{
    let data: scamInfo
    
    @EnvironmentObject var model: passID
    
    var body: some View{
        ZStack{
            Color(red: 192 / 255, green: 223 / 255, blue: 161 / 255)
                    .edgesIgnoringSafeArea(.all)

            VStack{
                Text(data.scamType)
                    .foregroundColor(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                    .font(.system(size: 45, weight: .bold))
                    .padding(.top, -75)
                
                if(model.objID == 1){
                    ZStack{
                        RoundedRectangle(cornerRadius: 25)
                            .fill(.white)
                            .shadow(radius: 10)
                            .frame(width: 350, height: 625)
                            .padding()
                        VStack (alignment: .leading){
                        Text(data.moreInfo.whatItIs)
                        }.padding()
                        .frame(width: 350, height: 625)
                    }
                }else if(model.objID == 2){
                    ZStack{
                        RoundedRectangle(cornerRadius: 25)
                            .fill(.white)
                            .shadow(radius: 10)
                            .frame(width: 350, height: 625)
                            .padding()
                        VStack (alignment: .leading){
                        Text(data.moreInfo.whatToDo)
                        }.padding()
                        .frame(width: 350, height: 625)
                    }
                }else if(model.objID == 3){
                    ZStack{
                        RoundedRectangle(cornerRadius: 25)
                            .fill(.white)
                            .shadow(radius: 10)
                            .frame(width: 350, height: 625)
                            .padding()
                        VStack (alignment: .leading){
                        Text(data.moreInfo.howToPrevent)
                        }.padding()
                        .frame(width: 350, height: 625)
                    }
                }else{
                    ZStack{
                        RoundedRectangle(cornerRadius: 25)
                            .fill(.white)
                            .shadow(radius: 10)
                            .frame(width: 350, height: 625)
                            .padding()
                        VStack (alignment: .leading){
                        Text("Error to Load data!!!")
                        }.padding()
                        .frame(width: 350, height: 625)
                    }
                }
                
            }
        }
    }
}


