//
//  ViewController.swift
//  Exam1_55011221005
//
//  Created by student on 12/17/14.
//  Copyright (c) 2014 Pramot. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource{
    
    
    var items = [String]()
    
    @IBOutlet weak var tabelView: UITableView!

    @IBAction func addItem(sender: AnyObject) {
        
        var alert = UIAlertController(title: "New Stocks", message: "Add name", preferredStyle: .Alert)
        println("++++++++++++++++++++save")
        
        let saveAction = UIAlertAction(title: "Save", style: .Default) {(action: UIAlertAction!) -> Void in
            
            let textField = alert.textFields![0] as UITextField
            let textField2 = alert.textFields![1] as UITextField
            let textField3 = alert.textFields![2] as UITextField

            println("++++++++++++++++++++tf")
            self.items.append(textField.text)
            self.items.append(textField2.text)
            self.items.append(textField3.text)
            
            //self.saveName(textField.text)
            self.tabelView.reloadData()
            // println(textField.text)
            
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .Default){
            (action: UIAlertAction!) -> Void in
        }
      
        alert.addTextFieldWithConfigurationHandler { (textField: UITextField!) -> Void in
            
        }
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        
        presentViewController(alert,
            animated: true,
            completion: nil)
        

        
        
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as UITableViewCell
        
        cell.textLabel!.text = items[indexPath.row]
        
        
       //let item = items[indexPath.row]
        //cell.textLabel!.text = Stocks.valueForKey("name") as String?
     
        return cell
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        title = "\"Stocks List\""
        tabelView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

