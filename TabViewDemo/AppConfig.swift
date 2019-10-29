//
//  AppConfig.swift
//  TabViewDemo
//
//  Created by Ashraf Ahmed on 24/10/19.
//  Copyright © 2019 Shakil Ahammed. All rights reserved.
//

import UIKit

struct AppConfig {
    
    static let production: Bool = false
    static let publicAuthenticationKey = "public whpPQCbEJk"
    static let googleAPIKey = "AIzaSyCUoF0xXp7Ui3z8Gxim4KvrCT56psGpBaw"
    static let isSessionTimeOutEnabled: Bool = false
    static let hotelProviderId = 12
    
    struct Locales {
        static let bangladesh = "bn_BD"
        static let unitedStates = "en_US"
    }
    
    struct PaymentMethodLogos {
        static let master = "master_card"
        static let visa = "visa"
        static let dutch = "dutch_bangla_bank"
        static let americanExpress = "american_express"
        static let bkash = "bkash"
        static let rocket = "rocket"
    }
    
    struct FontFamilyNames {
        
        /*
 
         SF Pro Display
         == SFProDisplay-Regular
         == SFProDisplay-Bold
         == SFProDisplay-Semibold
         == SFProDisplay-Medium
         
         SF Pro Text
         == SFProText-Medium
         
         SF Compact Display
         == SFCompactDisplay-Semibold
         
        */
        
        static let regularDisplayFamily             = "SFProDisplay-Regular"
        static let mediumDisplayFamily              = "SFProDisplay-Medium"
        static let boldDisplayFamily                = "SFProDisplay-Bold"
        static let semiBoldDisplayFamily            = "SFProDisplay-Semibold"
        static let mediumTextFamily                 = "SFProText-Medium"
        static let semiBoldCompactDisplayFamily     = "SFCompactDisplay-Semibold"
        static let regularCompactDisplayFamily      = "SFCompactDisplay-Regular"
    }
    
    struct Colors {
        
        static let travelTypeMenuBackground = UIColor(hexString: "#273b5a")
        static let travelTypeMenuStart = UIColor(hexString: "#ffd240")
        static let travelTypeMenuEnd = UIColor(hexString: "#fff58d")
        static let travelTypeMenuSelectedText = UIColor(hexString: "#102344")
        
        static let selectedText = UIColor(hexString: "#fecc45")
        
        static let commonBackground = UIColor(hexString: "#102444")
        static let buttonBackgroundSelected = UIColor(hexString: "#102444")
        static let buttonBackgroundNormal = UIColor(hexString: "#e7eaed")
        static let tintColor = UIColor(hexString: "#ffd240")
        
        static let background1 = UIColor(hexString: "#102444")
        static let background2 = UIColor(hexString: "#142d55")
        static let background3 = UIColor(hexString: "#193463")
        static let background4 = UIColor(hexString: "#1f3b73")
    }
}
