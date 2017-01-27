//
//  Win.swift
//  RNCompanion
//
//  Created by Khalid Mills on 1/26/17.
//  Copyright © 2017 iksnae. All rights reserved.
//

import Cocoa

class Win: NSWindowController {

    override func windowDidLoad() {
        super.windowDidLoad()
        window?.level = Int(CGWindowLevelForKey(.floatingWindow))
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }

}
