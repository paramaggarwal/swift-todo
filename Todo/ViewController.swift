//
//  ViewController.swift
//  Todo
//
//  Created by Param Aggarwal on 25/09/14.
//  Copyright (c) 2014 Assignment. All rights reserved.
//

import UIKit

class ViewController: UITableViewController, UITextFieldDelegate {

    var items = ["get milk", "do talk", "build something"]
    
    @IBOutlet weak var newItemField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("item", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel?.text = items[indexPath.row]
        
        return cell;
        
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        items.removeAtIndex(indexPath.row)
        tableView.reloadData()
    }
        
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        items.append(textField.text)
        self.tableView.reloadData()
        textField.text = ""
        
        return true
    }

}

