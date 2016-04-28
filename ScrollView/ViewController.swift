//
//  ViewController.swift
//  ScrollView
//
//  Created by Senghuot Lim on 4/6/16.
//  Copyright © 2016 Home Brew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let ivc = segue.destinationViewController as? ImageViewController {
            if let identifier = segue.identifier {
                switch identifier {
                case "Earth":
                    ivc.title = "Earth"
                    ivc.imageURL = DemoURL.NASA.Earth
                case "Cassini":
                    ivc.title = "Cassini"
                    ivc.imageURL = DemoURL.NASA.Cassini
                case "Saturn":
                    ivc.title = "Saturn"
                    ivc.imageURL = DemoURL.NASA.Saturn
                default: break
                }
                
            }
            
        }
        
    }
}

