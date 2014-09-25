//
//  ViewController.swift
//  Todo
//
//  Created by Param Aggarwal on 25/09/14.
//  Copyright (c) 2014 Assignment. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("item", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel?.text = String(indexPath.row)
        
        return cell;
        
    }
}

