//
//  ViewController.swift
//  RNCompanion
//
//  Created by Khalid Mills on 1/26/17.
//  Copyright © 2017 iksnae. All rights reserved.
//

import Cocoa


let ADB_PATH = "~/Library/Android/sdk/platform-tools/adb"


class ViewController: NSViewController {


    @IBOutlet var devMenuButton:NSButton!
    @IBOutlet var reloadButton:NSButton!
    @IBOutlet weak var alwaysOnTopToggleButton: NSButton!


    @IBAction func onShowDevMenu(_ btn:NSButton){
        callABD(args: ["shell","input","keyevent","KEYCODE_MENU"])
    }


    @IBAction func onReload(_ btn:NSButton){
        callABD(args: ["shell","input","text","RR"])

    }

    func callABD(args:[String]) {
        let task = Process()
        task.launchPath = ADB_PATH;
        task.arguments = args
        task.launch()
    }

}
