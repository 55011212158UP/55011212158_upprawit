//
//  color2ViewController.swift
//  Segue
//
//  Created by student on 10/17/14.
//  Copyright (c) 2014 Pramot. All rights reserved.
//

import UIKit
protocol color2ViewControllerDelegate{
    func myVCDidFinish(controller:color2ViewController,text:String)
}
class color2ViewController: UIViewController {
    
    var delegate: color2ViewControllerDelegate? = nil
    var colorString = ""
    @IBOutlet var colorLable: UILabel!

    @IBAction func Save(sender: UIBarButtonItem) {
        if (delegate != nil){
            delegate!.myVCDidFinish(self,text: colorLable!.text!)
        }
        
        
    }

    
    @IBAction func colorSelection(sender: UIButton) {
      colorLable.text = sender.titleLabel!.text!
    
        if(sender.titleLabel!.text! == "red"){
            colorLable.backgroundColor = UIColor.redColor()
        }
        else if(sender.titleLabel!.text! == "green"){
               colorLable.backgroundColor = UIColor.greenColor()
        }
        else if(sender.titleLabel!.text! == "yellow"){
            colorLable.backgroundColor = UIColor.yellowColor()
        }
        else{ colorLable.backgroundColor = UIColor.whiteColor()     }
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        colorLable.text = colorString  //อัพเดตค่า
        
        
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
