//
//  scamInfo.swift
//  Scam-Detector
//
//  Created by VARUN SIDHU on 2022-06-03.
//

/*
 This page includes objects to load more info data from json file into struct.
 */

import Foundation

// It includes information regarding what scam is all about. Different sections are used to display different information in differents parts.
struct WhatItIs: Codable{
    /// Section to add required information accordingly.
    let section1: String?
    /// Section to add required information accordingly.
    let section2: String?
    /// Section to add required information accordingly.
    let section3: String?
    /// Section to add required information accordingly.
    let section4: String?
    /// Section to add required information accordingly.
    let section5: String?
    /// Section to add required information accordingly.
    let section6: String?
    /// Section to add required information accordingly.
    let section7: String?
    /// Section to add required information accordingly.
    let section8: String?
    /// Section to add required information accordingly.
    let section9: String?
    /// Section to add required information accordingly.
    let section10: String?
    /// Section to add required information accordingly.
    let section11: String?
    /// Section to add required information accordingly.
    let section12: String?
    /// Section to add required information accordingly.
    let section13: String?
    /// Section to add required information accordingly.
    let section14: String?
    /// Section to add required information accordingly.
    let section15: String?
    /// Section to add required information accordingly.
    let section16: String?
    /// Section to add required information accordingly.
    let section17: String?
    /// Section to add required information accordingly.
    let section18: String?
    /// Section to add required information accordingly.
    let section19: String?
    /// Section to add required information accordingly.
    let section20: String?
    /// Section to add required information accordingly.
    let section21: String?
    /// Section to add required information accordingly.
    let section22: String?
    /// Section to add required information accordingly.
    let section23: String?
    /// Section to add required information accordingly.
    let section24: String?
    /// Section to add required information accordingly.
    let section25: String?
    /// Section to add required information accordingly.
    let section26: String?
    /// Section to add required information accordingly.
    let section27: String?
    /// Section to add required information accordingly.
    let section28: String?
    /// Section to add required information accordingly.
    let section29: String?
    /// Section to add required information accordingly.
    let section30: String?
    /// Section to add required information accordingly.
    let section31: String?
    /// Section to add required information accordingly.
    let section32: String?
    /// Section to add required information accordingly.
    let section33: String?
    /// Section to add required information accordingly.
    let section34: String?
    /// Section to add required information accordingly.
    let section35: String?
    /// Section to add required information accordingly.
    let section36: String?
    /// Section to add required information accordingly.
    let section37: String?
    /// Section to add required information accordingly.
    let section38: String?
    /// Section to add required information accordingly.
    let section39: String?
    /// Section to add required information accordingly.
    let section40: String?
}

// It includes information regarding what a person should do if they become victim of any scam.
struct WhatToDo: Codable{
    /// Section to add required information accordingly.
    let section1: String?
    /// Section to add required information accordingly.
    let section2: String?
    /// Section to add required information accordingly.
    let section3: String?
    /// Section to add required information accordingly.
    let section4: String?
    /// Section to add required information accordingly.
    let section5: String?
    /// Section to add required information accordingly.
    let section6: String?
    /// Section to add required information accordingly.
    let section7: String?
    /// Section to add required information accordingly.
    let section8: String?
    /// Section to add required information accordingly.
    let section9: String?
    /// Section to add required information accordingly.
    let section10: String?
}

// It includes information regarding how a person can prevent themselves from any scams.
struct Prevention: Codable{
    /// Section to add required information accordingly.
    let section1: String?
    /// Section to add required information accordingly.
    let section2: String?
    /// Section to add required information accordingly.
    let section3: String?
    /// Section to add required information accordingly.
    let section4: String?
    /// Section to add required information accordingly.
    let section5: String?
    /// Section to add required information accordingly.
    let section6: String?
    /// Section to add required information accordingly.
    let section7: String?
    /// Section to add required information accordingly.
    let section8: String?
    /// Section to add required information accordingly.
    let section9: String?
    /// Section to add required information accordingly.
    let section10: String?
}

// It includes additional information for any scam (image, online links and written info including prevention measures, what to do if you become victim of scam etc)
struct MoreInfo:Identifiable, Codable{
    /// id for more information objectt
    let id: Int
    /// Information regarding what that scam is all about.
    let whatItIs: WhatItIs
    /// Information regarding what a person can do after becoming victim of such scam.
    let whatToDo: WhatToDo
    /// Information regarding how to prevent ourself from such scam.
    let prevention: Prevention
    /// URL 1 to additional information on scam.
    let link1: String
    /// URL 2 to additional information on scam.
    let link2: String?
    /// URL 3 to additional information on scam.
    let link3: String?
    /// URL 4 to additional information on scam.
    let link4: String?
    /// URL 5 to additional information on scam.
    let link5: String?
    /// Image related to scam to be displayed on screen
    let image: String
    
}

// It is main scam information object which includes all the above data for each scam type.
struct ScamInfo: Codable, Identifiable  {
    /// id of the scam type
    let id: Int
    /// Name of scam type
    let scamType: String
    /// Image used to display scam on icon
    let sysImg: String
    /// More information for the selected scam type
    let moreInfo: MoreInfo
}
