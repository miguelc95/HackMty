//
//  ViewController.swift
//  HackMty
//
//  Created by Miguel Cuellar on 2/20/16.
//  Copyright © 2016 Miguel Cuellar. All rights reserved.
//

import UIKit
import Social

class ViewController: UIViewController {
    
    @IBAction func pressed(sender: AnyObject) {
        
            let textToShare = "Swift is awesome!  Check out this website about it!"
            
            if let myWebsite = NSURL(string: "http://www.codingexplorer.com/")
            {
                let objectsToShare = [textToShare, myWebsite]
                let activityVC = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)
                
                self.presentViewController(activityVC, animated: true, completion: nil)
            
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

