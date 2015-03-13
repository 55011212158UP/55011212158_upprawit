//
//  ViewController.swift
//  TipCalculator
//
//  Created by student on 9/12/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController
    ,UITableViewDelegate

{
    @IBOutlet var totalTextfield : UITextField!
    @IBOutlet var taxPctSlider : UISlider!
    @IBOutlet var taxPctLabel : UILabel!
    @IBOutlet var resultsText : UITextView!
    @IBOutlet weak var tableView: UITableView!
    
  
    @IBAction func calculateTapped(sender: AnyObject){
        tipCalc.total = Double((totalTextfield.text as NSString).doubleValue)
        
        let possibleTips = tipCalc.returnPossibleTip()
        var results = ""
        for(tipPct,tipValue) in possibleTips{
            results += "\(tipPct)%: \(tipValue)\n"
            
        }
        resultsText.text = results
       
        
        
    
    }
    @IBAction func taxPercenChange(sender: AnyObject){
        
    
        tipCalc.taxPct = Double(taxPctSlider.value)/100.0
        refeshUI()
    }
    @IBAction func viewTapped(sender: AnyObject){
    
        totalTextfield.resignFirstResponder()
    
    }

    let tipCalc = TipCalculatorModel(total:33.33,taxPct:0.06)
    func refeshUI(){
        //1
        totalTextfield.text = String(format:"%0.2f",tipCalc.total)
        //2
        taxPctSlider.value = Float(tipCalc.taxPct)*100.0
        //3
        taxPctLabel.text = "Tax Percentage(\(Int(taxPctSlider.value))%)"
        //4
        resultsText.text = ""
       
    }
    
  /*  func tableView(tableView: UITableView!, numberOfRowsInSection section: NSIndexPath!) -> UITableViewCellAccessoryType {
        code
    }*/
    
    
    
    
    
    
    
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        refeshUI()
    
    }

    override func didReceiveMemoryWarning() {        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}




