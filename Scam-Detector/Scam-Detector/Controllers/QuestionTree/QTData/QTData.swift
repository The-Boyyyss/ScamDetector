//
//  QTData.swift
//  Scam-Detector
//
//  Created by phillip chadwick on 2022-05-29.
//

import UIKit
import CoreGraphics

/// Stores the static data used to generate the Question Tree in a singleton. lets you build nodes from that data using the
/// buildNode Access point
public struct QTData {
        
    /// the dictionary that contains all the data to load the question Tree for the scam detect feature
    private let nodeInfo: [String: QTNode] = [
        "1.1": QTNode(id: (1,1), question: "Did you contact them?"),
        "2.1": QTNode(id: (2,1), question: "Did you get the contact information (phone, email, fax) from a source you trust?"),
        "2.2": QTNode(id: (2,2), question: "Did they contact you on the phone?"),
        "3.1": QTNode(id: (3,1), question: "Are they asking for something valuable other than money or your personal information (like gift-cards)", howToFix: "Consider if you are 100% positive the person you got this information from was credible."),
        "3.2": QTNode(id: (3,2), question: "have you already been in contact with this organization?"),
        "3.3": QTNode(id: (3,3), question: "Did they ask for money, giftcards, money-transfers, for you to receive and ship a box or personal information such as Social insurance number, licence number, etc?"),
        "3.4": QTNode(id: (3,4), question: "Did they contact you on your email", howToFix: "Scammers often use emails to get money or computer access from their targets.\nBe suspicious of emails from people you don’t know and organizations/banks you don’t belong to"),
        "4.1": QTNode(id: (4,1), question: "", howToFix: "This is probably a scam,\nEnd the call and call somone you can call for assistance. \nIf you need assistance now, click the back button at the top of the screen and then press the call contact button"),
        "4.2": QTNode(id: (4,2), question: "Are they asking for money or Personal information"),
        "4.3": QTNode(id: (4,3), question: "Have you given them money, giftcards or personal information before", howToFix: "Immediately Hang-up and don’t answer if they call back. If they start to get angry or threaten you as you hang up this is most likely a scam. \nOnce you hang up, if they were claiming to be from your bank or an organization that you trust, you should call that organization from a number you have previously used and trust or you should find the organizations number either using a phonebook or searching for the organizatins number using a trusted search engine such as www.google.com or www.yahoo.ca. \nIf you are uncomfortable with all of these options and the organization has a location near you, you could also go to the organizations physical location an ask for assistance in person."),
        "4.4": QTNode(id: (4,4), question: "Have you given them money, giftcards or personal information before"),
        "4.5": QTNode(id: (4,5), question: "Are you still currently on the phone with them?"),
        "4.6": QTNode(id: (4,6), question: "have they tried to get access, or claimed something is wrong with, your computer?", howToFix: "If during the call the rep becomes hostile, begins threatening you with legal action, or asks you for money, giftcards, or valuables, immediatly hang up and call someone you can trust for assistance."),
        "4.7": QTNode(id: (4,7), question: "Did you click on a link on the emal or call an attached phone number?"),
        "4.8": QTNode(id: (4,8), question: "Did you click on a pop up?"),
//        "5.1": QTNode(id: (5,1), question: "p", howToFix: "q5.1 how to fix"),
//        "5.2": QTNode(id: (5,2), question: "q", howToFix: "q5.2 how to fix"),
        "5.3": QTNode(id: (5,3), question: "", howToFix: "It is likely not a scam, however if you are concerned you should hang up and call someone you trust. \nIf you are concerned about the call you can visit the organization in person if there is a location near you. \nIf you need assistance now, click the back button at the top of the screen and then press the call contact button"),
        "5.4": QTNode(id: (5,4), question: "", howToFix: "probably not a scam"),
        "5.5": QTNode(id: (5,5), question: "", howToFix: "If you wired them money through your bank, immediatly contact them from a number you have perviously used and trust.\nTell them about the situation and they should be able to help.\nIf you sent them items or money through the mail you could contact the post office and see if they can halt the package. \nIf you gave them giftcard numbers you can call the connected organization ask to talk to customer service, then explain the situation. hopefully they can stop the scammers from using those codes. \nIf you need assistance press the back button at the top of the page and then click on call contact."),
        "5.6": QTNode(id: (5,6), question: "Are they asking for money valuables or personal information"),
        "5.7": QTNode(id: (5,7), question: "Have you given them money, giftcards or personal information before"),
        "5.8": QTNode(id: (5,8), question: "Are they asking for money valuables or personal information"),
        "5.9": QTNode(id: (5,9), question: "Have you already given them anything? This could be giftcard numbers, money, personal information, or anything else of value.", howToFix: "Immediately Hang-up and don’t answer if they call back. If they start to get angry or threaten you as you hang up this is most likely a scam. \nOnce you hang up, if they were claiming to be from your bank or an organization that you trust, you should call that organization from a number you have previously used and trust or you should find the organizations number either using a phonebook or searching for the organizatins number using a trusted search engine such as www.google.com or www.yahoo.ca. \nIf you are uncomfortable with all of these options and the organization has a location near you, you could also go to the organizations physical location an ask for assistance in person."),
        "5.10": QTNode(id: (5,10), question: "Have you already given them anything? This could be giftcard numbers, money, personal information, or anything else of value."),
        "5.11": QTNode(id: (5,11), question: "Have they ever, or are they currently connected or have they installed anything to your computer?", howToFix: "Scammers will often install screen sharing software so they can watch and control your screen remotely. They will then get you to log onto your banking information or bring up a square black window and get you to type amounts into it. \nThey will then claim that too much money was transfered and demand that you compensate them for the mistake"),
        "5.12": QTNode(id: (5,12), question: "Have they claimed that you’ve won a prize or are offering you something too good to be true?", howToFix: "Scammers will often try to lure people in by pretending that you’ve won something. Odds are if something sounds too good to be true, it probably is."),
        "5.13": QTNode(id: (5,13), question: "Have you entered any personal information?"),
        "5.14": QTNode(id: (5,14), question: "", howToFix: "delete the offending email or move it to your spam folder.\nIf the email had contents you are concerned about and it seemed to be from a legitimate source you are familiar with and have business with, you can look up their number from and independent source like www.google.com or www.yahoo.ca.You can also contact a trusted family member or friend for assistance.\nIf you need assistance you can press the back button at the top of the screen and press the call contact button."),
        "5.15": QTNode(id: (5,15), question: "Have you given them personal information or installed anything?", howToFix: "pop-ups are often used by scammers to direct users to a scam"),
        "5.16": QTNode(id: (5,16), question: "Did they contact you in a chat or text message?", howToFix: "Chat messages are often used by scammers to direct users to a scam"),
        "6.11": QTNode(id: (6,11), question: "", howToFix: "This could be a scam, End communications with them and contact a trusted friend or family member for assistance. \nIf you are concerned  you can visit the organization in person if there is a location near you. \nIf you need assistance now, click the back button at the top of the screen and then press the call contact button"),
        "6.12": QTNode(id: (6,12), question: "", howToFix: "probably not a scam"),
        "6.13": QTNode(id: (6,13), question: "", howToFix: "Immediately hang up. \nImmediatly turn off your computer and leave it off. \nWhen a scammer gets access to your computer they can secretly keep that access and steal anything on your computer. They can also watch you as you log onto online banking or other services and steal your data. \nContact a family member or a computer repair shop and explain what happened. They will be able to remove the scammers from your computer safetly."),
        "6.14": QTNode(id: (6,14), question: "", howToFix: "immediately close the window you are on and the web browser. \nScammers will often try to lure in users pretending to be a legitimate ad, a message from a trusted business or posing as a system error. \nAs a general rule, always immediately close a pop-up and never click on the contents of a pop-up. \nif you are getting a lot of pop-ups you should contact a computer store or family member/friend that is good with computers for assistance. \nIf you feel like you are in need of assistance or press the back button at the top of the screen and press the call contact button"),
        "6.15": QTNode(id: (6,15), question: "", howToFix: "immediate close the chat and don’t respond to any future messages. \nContact someone you trust for assistance or press the back button at the top of the screen and press the call contact button"),
        "6.16": QTNode(id: (6,16), question: "", howToFix: "Probably not a scam"),
        "6.17": QTNode(id: (6,17), question: "", howToFix: "If you wired them money through your bank, immediatly contact them from a number you have perviously used and trust.Tell them about the situation and they should be able to help. \nIf you sent them items or money through the mail you could contact the post office and see if they can halt the package. \nIf you gave them giftcard numbers you can call the connected organization ask to talk to customer service, then explain the situation. hopefully they can stop the scammers from using those codes. \nIf you need assistance press the back button at the top of the page and then click on call contact"),
        "6.18": QTNode(id: (6,18), question: "", howToFix: "Scammers are persistent and will possibly to try again pretending to be from a different organization. If this happens, immediately hang up. \nYou can ask your phone provider for assistance in bloicking the scammers numbers if they continue to harass you."),
        "6.19": QTNode(id: (6,19), question: "", howToFix: "If you wired them money through your bank, immediatly contact them from a number you have perviously used and trust.Tell them about the situation and they should be able to help. \nIf you sent them items or money through the mail you could contact the post office and see if they can halt the package. \nIf you gave them giftcard numbers you can call the connected organization ask to talk to customer service, then explain the situation. hopefully they can stop the scammers from using those codes. \nIf you need assistance press the back button at the top of the page and then click on call contact."),
        "6.20": QTNode(id: (6,20), question: "", howToFix: "Scammers are persistent and will possibly to try again pretending to be from a different organization. If this happens, immediately hang up. \nYou can ask your phone provider for assistance in bloicking the scammers numbers if they continue to harass you."),
        "6.21": QTNode(id: (6,21), question: "", howToFix: "Immediately hang up. \nImmediatly turn off your computer and leave it off. \nWhen a scammer gets access to your computer they can secretly keep that access and steal anything on your computer. They can also watch you as you log onto online banking or other services and steal your data. \nContact a family member or a computer repair shop and explain what happened. They will be able to remove the scammers from your computer safetly."),
        "6.22": QTNode(id: (6,22), question: "", howToFix: "Do install anything or let them install anything on your computer.  \nLegitimate companies will never call you asking for access to your computer. \nDon’t be alarmed if they get angry or threaten you when you hang up, this is an often used tactic by scammers. \nDon’t answer if you don’t recognize the number, scammers will often attempt to contact you by a different number if they notice your no longer answering the other one. \nIf you need assistance you can press the back button at the top of the screen and press the call contact button."),
        "6.23": QTNode(id: (6,23), question: "", howToFix: "Tread Carefully,  scammers will often pretend to be helping you when really they are trying to get something from you.\nIf during your conversation they ask for money, immediately hang up. "),
        "6.24": QTNode(id: (6,24), question: "", howToFix: "probably not a scam"),
        "6.25": QTNode(id: (6,25), question: "", howToFix: "Immediately leave the website and close your browser. don’t attempt to navigate back to that site. \nIf you entered and email and passoword that you use for another website you will need to go to all of those websites and change your password. \nIf you need assistance with this you can go to a computer repair shop or call a trusted family member or friend. \nIf you need assistance you can press the back button at the top of the screen and press the call contact button."),
        "6.26": QTNode(id: (6,26), question: "", howToFix: "Scammers are persistent and will possibly to try again pretending to be from a different organization. If this happens, immediately hang up. \nYou can ask your phone provider for assistance in bloicking the scammers numbers if they continue to harass you."),
        "6.29": QTNode(id: (6,29), question: "", howToFix: "Immediately hang up. \nImmediatly turn off your computer and leave it off. \nWhen a scammer gets access to your computer they can secretly keep that access and steal anything on your computer. They can also watch you as you log onto online banking or other services and steal your data. \nContact a family member or a computer repair shop and explain what happened. They will be able to remove the scammers from your computer safetly."),
        "6.30": QTNode(id: (6,30), question: "", howToFix: "immediately close the window you are on and the web browser. \nScammers will often try to lure in users pretending to be a legitimate ad, a message from a trusted business or posing as a system error. \nAs a general rule, always immediately close a pop-up and never click on the contents of a pop-up. \nif you are getting a lot of pop-ups you should contact a computer store or family member/friend that is good with computers for assistance. \nIf you feel like you are in need of assistance or press the back button at the top of the screen and press the call contact button"),
        "6.31": QTNode(id: (6,31), question: "", howToFix: "immediate close the chat and don’t respond to any future messages. \nContact someone you trust for assistance or press the back button at the top of the screen and press the call contact button"),
        "6.32": QTNode(id: (6,32), question: "", howToFix: "In person scams are outside the scope of this application \nIf you are conserned you are being scammed and need assistance, press the back button at the top of the screen and press the call contact button")
        ]
    
    
    /// builds attempts to build a node from the nodeInfo dictionary. Can optionally accept a parent node to be assigned
    func buildNode(nodeID: (Int, Int), parentNode: QTNode? = nil) -> QTNode? {
        // make sure the entry exists
        guard nodeInfo["\(nodeID.0).\(nodeID.1)"] != nil else {
            return nil
        }
        /// converted node id into dictionary key
        let key: String = "\(nodeID.0).\(nodeID.1)"

        // returns a node built with the information in the dictionary
        return QTNode(
            id: nodeInfo[key]!.id,
            question: nodeInfo[key]!.question,
            howToFix: nodeInfo[key]!.howToFix,
            parentNode: parentNode)
    }
}
