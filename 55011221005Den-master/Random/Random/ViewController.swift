//
//  ViewController.swift
//  Random
//
//  Created by student on 9/24/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var i=0,j=0,k=0
    @IBOutlet weak var oneTF: UIButton!
    @IBOutlet weak var oneL: UILabel!
    
    @IBOutlet weak var twoTF: UIButton!
    @IBOutlet weak var twoL: UILabel!
    
    
    @IBOutlet weak var threeTF: UIButton!
    @IBOutlet weak var threeL: UILabel!
    
    @IBOutlet weak var reset: UIButton!
    
    
    @IBAction func add1(sender: AnyObject) {
        i++
        oneL.text = String(i)
        
    }
    
    
    @IBAction func add2(sender: AnyObject) {
        j++
        twoL.text = String(j)
    }
    
    
    @IBAction func add3(sender: AnyObject) {
        k++
        threeL.text = String(k)
        
    }
    
    
    
    
    @IBAction func resetValue(sender: AnyObject) {
        i=0
        j=0
        k=0
        oneL.text = String(i)
        twoL.text = String(j)
        threeL.text = String(k)
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

