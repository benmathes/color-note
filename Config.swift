//
//  Config.swift
//  color_notes
//
//  Created by benmathes on 7/31/15.
//  Copyright (c) 2015 B&B Labs. All rights reserved.
//

import Foundation


struct Config {
    
    // read more about swift compiler flags: http://nshipster.com/swift-system-version-checking/
    
    struct names {
        static let cache = "colorNote"
        static let meeting = "meeting"
    }
    
    struct errors {
        static let domain = "colorNote_Error"
    }
    
    struct http {
        static let ok = 200
        static let conflict = 409
        static let notFound = 404
        static let codeToMessage: [Int: String] = [
            409: "conflict: already saved that before.",
            404: "Not found"
        ]
    }
    
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
