//
//  ViewController.swift
//  NSWorkspaceTutorial
//
//  Created by CJS on 15/11/17.
//  Copyright © 2015年 CJS. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    var workspace: NSWorkspace?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        workspace = NSWorkspace.sharedWorkspace()
        if let runApplications = workspace?.runningApplications {
            for runApplication in runApplications {
                print("active:\(runApplication.active)")
                print("hidden:\(runApplication.hidden)")
                print("localizedName:\(runApplication.localizedName)")
                print("processIdentifier:\(runApplication.processIdentifier)")
                print("bundleIdentifier:\(runApplication.bundleIdentifier)")
                print("bundleURL:\(runApplication.bundleURL)")
                print("executableArchitecture:\(runApplication.executableArchitecture)")
                print("icon:\(runApplication.icon)")
                print("-------------------------")
            }
        }
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }
}

