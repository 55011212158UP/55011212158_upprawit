//
//  ViewController.swift
//  Exam1_55011221005
//
//  Created by Student on 10/10/14.
//  Copyright (c) 2014 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate{
    let cellIdentifier = "cellIdentifier"
    var tableData = ["Bus","Helicopter","Truck"]
    
    @IBOutlet var name: UITextField!
    @IBOutlet var volume: UITextField!
    @IBOutlet var price: UITextField!
    
    @IBOutlet var total: UIButton!
    @IBOutlet var outputTotal: UITextField!
    
    @IBOutlet var profit: UIButton!
    @IBOutlet var tableview: UITableView!
 
    @IBOutlet var reset: UIButton!
    @IBAction func reset(sender: AnyObject) {
        name.text = ""
        volume.text = ""
        price.text = ""
        outputTotal.text = ""
    }
    
    
    @IBAction func TotalFunc(sender: AnyObject) {
    
        
    outputTotal.text = String("\(IntMax(Double((volume.text as NSString).doubleValue)*Double((price.text as NSString).doubleValue)))  Baht")
        
    }
    
    @IBAction func profit(sender: AnyObject) {
        
    }
    
    
    //*************
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    
func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCellWithIdentifier(self.cellIdentifier) as UITableViewCell
        
        cell.textLabel!.text = String("ราคาหุ้น3%: กำไร\(IntMax(Double((volume.text as NSString).doubleValue)*(Double((price.text as NSString).doubleValue))*3/100))   บาท")
        
        var imageName = UIImage(named: tableData[indexPath.row])
        
        cell.imageView!.image = imageName
        
        return cell
        
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    func refeshUI(){
        //1
        volume.text = String(format:"%0.2f")
        //2
        price.text = String(format:"%0.2f")
        
    }

    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableview.registerClass(UITableViewCell.self, forCellReuseIdentifier: self.cellIdentifier)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

