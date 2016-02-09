//
//  Keys.swift
//  color notes
//
//  Created by benmathes on 2/9/16.
//  Copyright © 2016 Life Admin. All rights reserved.
//

import Foundation

struct Keys {
    
    // read more about swift compiler flags: http://nshipster.com/swift-system-version-checking/
    
    struct firebase {
        static let secret = "9JdrDXXuLVKbssJpc0mgxvSIAMBQ25jAmBBG0DiT"
    }
    
    /*
    struct mixpanel {
    #if RELEASE
    static let token = ""
    #else
    static let token = ""
    #endif
    }*/
    
    struct facebook {
        static let appID = "1467039450286174"
        static let secret = "b97bb12654406cc59bf2c5bb8fa26b64"
        static let displayName = "color note"
        static let urlSchemes = "fb1467039450286174"
    }
    
}