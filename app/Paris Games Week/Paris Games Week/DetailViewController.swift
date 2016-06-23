//
//  DetailViewController.swift
//  Paris Games Week
//
//  Created by Julien Sallei on 22/06/2016.
//  Copyright © 2016 Paris Games Week. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var textHoraires: UITextField!
    @IBOutlet weak var textAdresses: UITextField!
    @IBOutlet weak var textTarifs: UITextView!
    @IBOutlet weak var textAcces: UITextView!

    var detailItem: AnyObject? {
        didSet {
           
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail: AnyObject = self.detailItem {
            let info = detail as! Info
            textHoraires.text = info.horaires
            textAdresses.text = info.adresses
            textTarifs.text = info.tarifs
            textAcces.text = info.acces
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