//
//  MeetViewController.swift
//  Media Naranja IWEB
//
//  Created by Carlos Macias Jimenez on 17/11/15.
//  Copyright © 2015 Carlos Macias Jimenez. All rights reserved.
//

import UIKit

class MeetViewController: UIViewController {
    
    @IBOutlet weak var meetTitleLabel: UILabel!
    @IBOutlet weak var meetPicker: UIDatePicker!
    @IBOutlet weak var finishButton: UIButton!
    
    var birthday: NSDate?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "meetSegue" {
            
            let ivc = segue.destinationViewController as! ViewController
            ivc.meet = meetPicker.date
            ivc.birthday = birthday
        }
        
        print("Date when you met: ", meetPicker.date)
    }
}
