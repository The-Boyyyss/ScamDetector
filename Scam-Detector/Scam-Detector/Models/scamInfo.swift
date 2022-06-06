//
//  scamInfo.swift
//  Scam-Detector
//
//  Created by VARUN SIDHU on 2022-06-03.
//

import Foundation

struct moreInfo: Codable{
    let id: Int
    let whatItIs: String
    let whatToDo: String
    let howToPrevent: String
}

struct scamInfo:Codable {
    let id: Int
    let scamType: String
    let sysImg: String
    let moreInfo: moreInfo
}
