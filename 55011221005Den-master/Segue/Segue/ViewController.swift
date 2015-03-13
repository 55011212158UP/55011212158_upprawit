//
//  ViewController.swift
//  Segue
//
//  Created by student on 10/17/14.
//  Copyright (c) 2014 Pramot. All rights reserved.
//

import UIKit

class ViewController: UIViewController, color2ViewControllerDelegate {
    
    @IBOutlet var colorLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    func myVCDidFinish(controller: color2ViewController, text: String){
        colorLable.text = "Color:  " + text
        if(text == "red"){
            colorLable.backgroundColor = UIColor.redColor()
        }
        else if(text == "green"){
            colorLable.backgroundColor = UIColor.greenColor()
        }
        else if(text == "yellow"){
            colorLable.backgroundColor = UIColor.yellowColor()
            
        }
        
        controller.navigationController?.popViewControllerAnimated(true)
    }
    
    //เพิ่มมาเพื่อรับค่าจาก segue
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "mySegue"{ //
            let vc = segue.destinationViewController as color2ViewController
            
            
            //เครื่องหมายตกใจ เช็คว่าเป็น nil หรือไม่
            vc.colorString = colorLable.text!
            vc.delegate = self //มีการส่งค่าระหว่าง 2 หน้า
            
        }
    }


}

