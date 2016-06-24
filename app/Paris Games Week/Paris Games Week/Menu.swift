//
//  Menu.swift
//  Paris Games Week
//
//  Created by Mastere 1 IT on 24/06/2016.
//  Copyright © 2016 Paris Games Week. All rights reserved.
//

import UIKit

class Menu: UIViewController {
    @IBOutlet weak var compteur: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var timer = NSTimer.scheduledTimerWithTimeInterval(0.4, target: self, selector: "update", userInfo: nil, repeats: true)

        
        let dateFormatter = NSDateFormatter()
        
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let dateAsString = "2016-10-27 09:00:00"
        let datePGW = dateFormatter.dateFromString(dateAsString)!
        
        let currentDate = NSDate()
        //var currentDate = dateFormatter.dateFromString(dateAsString2)!
        
        let dateComponentsFormatter = NSDateComponentsFormatter()
        dateComponentsFormatter.unitsStyle = NSDateComponentsFormatterUnitsStyle.Full
        
        let interval = datePGW.timeIntervalSinceDate(currentDate)
        dateComponentsFormatter.stringFromTimeInterval(interval)
        
        compteur.text = dateComponentsFormatter.stringFromTimeInterval(interval)

        

        // Do any additional setup after loading the view.
    }
    
    func update(){
        let dateFormatter = NSDateFormatter()
        
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let dateAsString = "2016-10-27 09:00:00"
        let datePGW = dateFormatter.dateFromString(dateAsString)!
        
        let currentDate = NSDate()
        //var currentDate = dateFormatter.dateFromString(dateAsString2)!
        
        let dateComponentsFormatter = NSDateComponentsFormatter()
        dateComponentsFormatter.unitsStyle = NSDateComponentsFormatterUnitsStyle.Full
        
        let interval = datePGW.timeIntervalSinceDate(currentDate)
        dateComponentsFormatter.stringFromTimeInterval(interval)
        
        compteur.text = dateComponentsFormatter.stringFromTimeInterval(interval)
    }
    
    
    var detailItem: AnyObject? {
        didSet {
            
        }
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    let dateFormatter = NSDateFormatter()
    
    dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
    let dateAsString = "2016-10-27 09:00:00"
    let datePGW = dateFormatter.dateFromString(dateAsString)!
    
    let currentDate = NSDate()
    //var currentDate = dateFormatter.dateFromString(dateAsString2)!
    
    let dateComponentsFormatter = NSDateComponentsFormatter()
    dateComponentsFormatter.unitsStyle = NSDateComponentsFormatterUnitsStyle.Full
    
    let interval = datePGW.timeIntervalSinceDate(currentDate)
    dateComponentsFormatter.stringFromTimeInterval(interval)
    
    
    print("Ouverture de la billetterie dans :")
    */

}
