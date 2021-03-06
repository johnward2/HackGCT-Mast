//
//  Shop.swift
//  HackGCT-Mast
//
//  Created by Zachary Espiritu on 8/8/15.
//  Copyright (c) 2015 hackgctmast. All rights reserved.
//

import Foundation
import UIKit

class Shop: UIViewController {
    
    @IBOutlet weak var data_usage: UILabel!
    let b = Bites();
    
    var bites = NSUserDefaults.standardUserDefaults().integerForKey("currentFeedingBites")
    
    func buySaltines() { // 1 KB
        if bites > 1024 {
            var newSaltines = NSUserDefaults.standardUserDefaults().integerForKey("saltines")
            newSaltines++
            NSUserDefaults.standardUserDefaults().setInteger(newSaltines, forKey: "saltines")
            bites -= 1024
        }
    }
    
    func buyCookie() { // 512 KB
        if bites > 1024 * 512 {
            var newSaltines = NSUserDefaults.standardUserDefaults().integerForKey("cookie")
            newSaltines++
            NSUserDefaults.standardUserDefaults().setInteger(newSaltines, forKey: "cookie")
            bites -= (1024 * 512)
        }
    }
    
    func buyBrownie() { // 1 MB
        if bites >= 1048576 {
            var newSaltines = NSUserDefaults.standardUserDefaults().integerForKey("brownie")
            newSaltines++
            NSUserDefaults.standardUserDefaults().setInteger(newSaltines, forKey: "brownie")
            bites -= 1048576
        }
    }
    
    func buyLollipop() { // 216 MB
        if bites >= 1048576 * 216 {
            var newSaltines = NSUserDefaults.standardUserDefaults().integerForKey("lollipop")
            newSaltines++
            NSUserDefaults.standardUserDefaults().setInteger(newSaltines, forKey: "lollipop")
            bites -= (1048576 * 216)
        }
    }
    
    func buyCottonCandy() { // 512 MB
        if bites >= 1048576 * 512 {
            var newSaltines = NSUserDefaults.standardUserDefaults().integerForKey("cottonCandy")
            newSaltines++
            NSUserDefaults.standardUserDefaults().setInteger(newSaltines, forKey: "cottonCandy")
            bites -= (1048576 * 512)
        }
    }
    
    func buyLavaCake() { // 1024 MB
        if bites >= 1048576 * 1024 {
            var newSaltines = NSUserDefaults.standardUserDefaults().integerForKey("lavaCake")
            newSaltines++
            NSUserDefaults.standardUserDefaults().setInteger(newSaltines, forKey: "lavaCake")
            bites -= (1048576 * 1024)
        }
    }
    
    func buyCremeBrulee() { // 1 GB
        if bites >= 1073741824 {
            var newSaltines = NSUserDefaults.standardUserDefaults().integerForKey("cremeBrulee")
            newSaltines++
            NSUserDefaults.standardUserDefaults().setInteger(newSaltines, forKey: "cremeBrulee")
            bites -= 1073741824
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //updateProgress()
        data_usage.text = "TEST"
            //String(Bites.sharedInstance.generalUpdate());
    }
}