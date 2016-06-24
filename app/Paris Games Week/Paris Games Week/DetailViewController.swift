//
//  DetailViewController.swift
//  Paris Games Week
//
//  Created by Julien Sallei on 22/06/2016.
//  Copyright © 2016 Paris Games Week. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var standName: UILabel!
    @IBOutlet weak var standPlace: UILabel!
    @IBOutlet weak var standDescription: UILabel!

    var detailItem: AnyObject? {
        didSet {
           
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail: AnyObject = self.detailItem {
            let stand = detail as! Stand
            standName.text = stand.name
            standPlace.text = stand.place
            standDescription.text = stand.infos
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