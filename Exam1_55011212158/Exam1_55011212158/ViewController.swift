//
//  ViewController.swift
//  Exam1_55011212158
//
//  Created by iStudents on 3/13/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Subject: UITextField!
    
    @IBOutlet weak var Midterm1: UITextField!
    
    @IBOutlet weak var Midterm2: UITextField!
    
    @IBOutlet weak var Point1: UITextField!

    @IBOutlet weak var Point2: UITextField!
    
    @IBOutlet weak var Final1: UITextField!
    
    @IBOutlet weak var Final2: UITextField!
    
    @IBOutlet weak var Total: UILabel!
    
    @IBOutlet weak var Over: UILabel!
    

    
    @IBOutlet weak var Grade: UILabel!
    
    @IBAction func Total(sender: AnyObject) {
        
        let a1:Int? = Midterm1.text.toInt()
        let a2 = Double((Midterm2.text as NSString).doubleValue)
        
        let a3:Int? = Point1.text.toInt()
        let a4 = Double((Point2.text as NSString).doubleValue)
        
        let a5:Int? = Final1.text.toInt()
        let a6 = Double((Final2.text as NSString).doubleValue)
        
        var Total1:Double = a2+a4+a6
        Total.text = "\(Total1)"
        
        if(Total1 >= 80){
            Grade.text = "A"
        }
        else if(Total1 >= 74){
            Grade.text = "B+"
        }
        else if(Total1 >= 68){
            Grade.text = "B"
        }
        else if(Total1 >= 62){
            Grade.text = "C+"
        }
        else if(Total1 >= 56){
            Grade.text = "C"
        }
        else if(Total1 >= 50){
            Grade.text = "D+"
        }
        else if(Total1 >= 44){
            Grade.text = "D"
        }
        else{
            Grade.text = "F"
        }
        
        
        var Total2 = a1!+a3!+a5!
        
        
        if (Total2 > 100){
            Over.text = "คะแนนรวมห้ามเกิน 100 คะแนน"
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

