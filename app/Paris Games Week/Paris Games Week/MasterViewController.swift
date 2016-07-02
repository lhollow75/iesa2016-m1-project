//
//  MasterViewController.swift
//  MyMovies
//
//  Created by Mastere 1 IT on 21/06/2016.
//  Copyright © 2016 lhollow. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {

    var detailViewController: DetailViewController? = nil
    var objects = NSMutableArray()
    var myStandStore: StandStore = StandStore()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.backBarButtonItem = UIBarButtonItem(title:"", style:.Plain, target:nil, action:nil)
        
        let addButton = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "insertNewObject:")
        
        self.navigationItem.rightBarButtonItem = addButton
        if let split = self.splitViewController {
            let controllers = split.viewControllers
            self.detailViewController = (controllers[controllers.count-1] as! UINavigationController).topViewController as? DetailViewController
        }
    }

    override func viewWillAppear(animated: Bool) {
        self.clearsSelectionOnViewWillAppear = self.splitViewController!.collapsed
        super.viewWillAppear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func insertNewObject(sender: AnyObject) {

        let alert = UIAlertController(title: "New Stand",
            message: "Stand title",
            preferredStyle: .Alert)

        let saveAction = UIAlertAction(title: "Save", style: .Default) {
            (action: UIAlertAction) -> Void in
                let textField = alert.textFields![0]
            
            let stand = Stand(name: textField.text!, place: "EB24ZX3", infos: "Vos infos ici", attente: String(arc4random_uniform(90) + 1))

            self.myStandStore.stands.append(stand)
            let indexPath = NSIndexPath(forRow: 2, inSection: 0)
            self.tableView.reloadData()
            
            let defaults = NSUserDefaults.standardUserDefaults()
            
            let data = NSKeyedArchiver.archivedDataWithRootObject(self.myStandStore.stands)
            NSUserDefaults.standardUserDefaults().setObject(data, forKey: "myList")

        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .Default) {
            (action: UIAlertAction) -> Void in
        }
        
        alert.addTextFieldWithConfigurationHandler{
            (textField: UITextField!) -> Void in
        }
        
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        
        presentViewController(alert, animated: true, completion: nil)
    }

    // MARK: - Segues

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        NSLog(">>>>> segue.identifier: \(segue.identifier)")
        
        
        if segue.identifier == "showDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow {

                let selectedStand:Stand = myStandStore.stands[indexPath.row]
                let controller = (segue.destinationViewController as! UINavigationController).topViewController as! DetailViewController
                controller.detailItem = selectedStand
                controller.navigationItem.leftBarButtonItem = self.splitViewController?.displayModeButtonItem()
                controller.navigationItem.leftItemsSupplementBackButton = true
            }
        }
    }

    // MARK: - Table View

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return myStandStore.stands.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        cell.textLabel!.text = myStandStore.stands[indexPath.row].name + " (" + String(myStandStore.stands[indexPath.row].attente) + " min)"
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        return cell
    }

    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.0
        return true
    }

    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            myStandStore.stands.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
            
            let defaults = NSUserDefaults.standardUserDefaults()
            
            let data = NSKeyedArchiver.archivedDataWithRootObject(self.myStandStore.stands)
            NSUserDefaults.standardUserDefaults().setObject(data, forKey: "myList")
            
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
        }
    }


}

