//
//  SessionDetailViewController.swift
//  Paris Games Week
//
//  Created by Mastere 1 IT on 24/06/2016.
//  Copyright © 2016 Paris Games Week. All rights reserved.
//

import UIKit

class SessionDetailViewController: UIViewController {
    @IBOutlet weak var sessionName: UILabel!
    @IBOutlet weak var sessionPlace: UILabel!
    @IBOutlet weak var sessionDescription: UILabel!
    @IBOutlet weak var sessionHoraires: UILabel!

    var detailItem: AnyObject? {
        didSet {
        }
    }
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail: AnyObject = self.detailItem {
            let session = detail as! Session
            sessionName.text = session.name
            sessionPlace.text = session.place
            sessionDescription.text = session.infos
            sessionHoraires.text = session.horaires
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
