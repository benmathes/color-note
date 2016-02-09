//
//  Config.swift
//  color notes
//
//  Created by benmathes on 2/9/16.
//  Copyright © 2016 Life Admin. All rights reserved.
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
            404: "not found",
            200: "success"
        ]
    }
}