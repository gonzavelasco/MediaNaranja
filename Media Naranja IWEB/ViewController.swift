//
//  ViewController.swift
//  Media Naranja IWEB
//
//  Created by Carlos Macias Jimenez on 17/11/15.
//  Copyright © 2015 Carlos Macias Jimenez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var birthdayLabel: UILabel!
    @IBOutlet weak var meetLabel: UILabel!
    @IBOutlet weak var deathLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
   
    var meet: NSDate?
    var birthday: NSDate?
    
    var a: Int = 1 // Birthday value
    var b: Int = 1 // Meet value
    
    // Unwind to receive data
    @IBAction func calculate (segue: UIStoryboardSegue) {}
    
    override func viewDidAppear(animated: Bool) {
  
        super.viewDidAppear(animated)
        
        if let _ = birthday?.timeIntervalSinceNow {
            
            let a = birthday?.timeIntervalSinceNow
            let daysSinceBorn = 0 - Int(a!/3600/24)
            birthdayLabel.text = "Lived: \(daysSinceBorn) days"
            
            let b = meet?.timeIntervalSinceNow
            let daysSinceMet = 0 - Int(b!/3600/24)
            meetLabel.text = "Together:  \(daysSinceMet) days"
            
            if (daysSinceBorn <= daysSinceMet) {
                
                // Create UIAlertController:
                let alert = UIAlertController(title: "Error", message: "You can't meet before the day you were born",
                    preferredStyle: UIAlertControllerStyle.Alert)
                
                // Add an Action to the Alert Controller:
                alert.addAction( UIAlertAction(title: "OK",
                    style: UIAlertActionStyle.Default,
                    handler: {(alert :UIAlertAction) in
                        print("OK pressed")
                }))
                
                // Show the Alert Controller:
                self.presentViewController(alert, animated: true, completion: nil)
                
            } else {
                
                let daysToDie = 2*(daysSinceBorn - daysSinceMet)
                deathLabel.text = "You'll die in:  \(daysToDie) days"
                
                print(daysToDie)
            }
        
            print(daysSinceBorn,daysSinceMet)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

