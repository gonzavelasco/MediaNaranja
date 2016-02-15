//
//  BirthdayViewController.swift
//  Media Naranja IWEB
//
//  Created by Carlos Macias Jimenez on 17/11/15.
//  Copyright © 2015 Carlos Macias Jimenez. All rights reserved.
//

import UIKit

class BirthdayViewController: UIViewController {

    @IBOutlet weak var birthdayTitleLabel: UILabel!
    @IBOutlet weak var birthdayPicker: UIDatePicker!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "birthdaySegue" {
            
            let ivc = segue.destinationViewController as! MeetViewController
            ivc.birthday = birthdayPicker.date
        }
        
        print("Birthday date: ", birthdayPicker.date)
    }
}
