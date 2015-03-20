//
//  TableViewController.swift
//  newAppProject
//
//  Created by iStudents on 3/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var listData = Array<balloon>()
    override func viewDidLoad() {
        super.viewDidLoad()
        listData = data().getData()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return listData.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as TableViewCell
        
        cell.customImageView.image = listData[indexPath.row].facImage
        cell.customLabel.text = listData[indexPath.row].facname
        
        
        
        return cell
    }
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        if(listData[indexPath.row].facname=="สาขาวิทยาการคอมพิวเตอร์"){
            let message = "สาขาวิทยาการคอมพิวเตอร์มีการเรียนการสอนที่มุ่มเน้นพัฒนานิสิตทั้งทางด้านทฤษฏีและปฏิบัติ "
            let alert = UIAlertController(title: "สาขาวิทยาการคอมพิวเตอร์", message: message, preferredStyle: .Alert)
            let okButton = UIAlertAction(title: "OK", style: .Default, handler: nil)
            alert.addAction(okButton)
            self.presentViewController(alert, animated: true, completion: nil)
        }
        else if(listData[indexPath.row].facname=="สาขาเทคโนโลยีสารสนเทศ"){
            let message = "สาขาเทคโนโลยีสารสนเทศมีความมุ่งมั่นในการผลิตบัณฑิตที่มีความรู้ ความสามารถด้านเทคโนโลยีสารสนเทศ  "
            let alert = UIAlertController(title: "สาขาเทคโนโลยีสารสนเทศ", message: message, preferredStyle: .Alert)
            let okButton = UIAlertAction(title: "OK", style: .Default, handler: nil)
            alert.addAction(okButton)
            self.presentViewController(alert, animated: true, completion: nil)
        }
        else if(listData[indexPath.row].facname=="สาขาคอมพิวเตอร์แอนิเมชันและเกม"){
            let message = "สาขาคอมพิวเตอร์แอนิเมชันและเกมมุ่งผลิตและพัฒนาบุคลากรที่มีศักยภาพ "
            let alert = UIAlertController(title: "สาขาคอมพิวเตอร์แอนิเมชันและเกม", message: message, preferredStyle: .Alert)
            let okButton = UIAlertAction(title: "OK", style: .Default, handler: nil)
            alert.addAction(okButton)
            self.presentViewController(alert, animated: true, completion: nil)
        }
        else if(listData[indexPath.row].facname=="สาขาภูมิสารสนเทศ"){
            let message = "เสริมสร้างองค์ความรู้คู่คุณธรรม เพื่อประยุกต์ใช้ศาสตร์ภูมิสารสนเทศ  ให้เกิดประโยชน์ต่อสังคมและท้องถิ่นอย่างยั่งยืน"
            let alert = UIAlertController(title: "สาขาภูมิสารสนเทศ", message: message, preferredStyle: .Alert)
            let okButton = UIAlertAction(title: "OK", style: .Default, handler: nil)
            alert.addAction(okButton)
            self.presentViewController(alert, animated: true, completion: nil)
        }
        else if(listData[indexPath.row].facname=="สาขาสารสนเทศศาสตร์"){
            let message = "หลักสูตรนี้มุ่งผลิตบัณฑิตให้เป็นผู้มีความรู้ความสามารถ รวมทั้งมีคุณธรรมและจริยธรรมในการจัดการสารสนเทศและแหล่งการเรียนรู้ "
            let alert = UIAlertController(title: "สาขาสารสนเทศศาสตร์", message: message, preferredStyle: .Alert)
            let okButton = UIAlertAction(title: "OK", style: .Default, handler: nil)
            alert.addAction(okButton)
            self.presentViewController(alert, animated: true, completion: nil)
        }
        else if(listData[indexPath.row].facname=="สาขานิเทศศาสตร์"){
            let message = "นำองค์ความรู้ บูรณาการกับภูมิปัญญาท้องถิ่นอย่างสร้างสรรค์ ด้วยจรรยาบรรณแห่งวิชาชีพนิเทศศาสตร์"
            let alert = UIAlertController(title: "สาขานิเทศศาสตร์", message: message, preferredStyle: .Alert)
            let okButton = UIAlertAction(title: "OK", style: .Default, handler: nil)
            alert.addAction(okButton)
            self.presentViewController(alert, animated: true, completion: nil)
        }

    
    }
    
}
