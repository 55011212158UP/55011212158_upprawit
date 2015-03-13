//
//  ViewController.swift
//  Test01
//
//  Created by student on 11/21/14.
//  Copyright (c) 2014 Pramot. All rights reserved.
//


import UIKit
import CoreMotion
import AVFoundation

class ViewController: UIViewController {

    var text = "BB"
    
    
    @IBAction func Test1(sender: AnyObject) {
                audioPlayer1.play()
        
    }
    
    @IBAction func Test2(sender: AnyObject) {
        
        audioPlayer1.stop()
        
    }
    
    @IBAction func Next(sender: AnyObject) {
        
        audioPlayer1.prepareToPlay()
        text = "kavo"
        var url1 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(text, ofType: "mp3")!)

        coreAudio()
        audioPlayer1.play()
       
      
        
    }
    @IBAction func back(sender: AnyObject) {
        audioPlayer1.prepareToPlay()
        text = "BB"
        var url1 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(text, ofType: "mp3")!)
        
        coreAudio()
        audioPlayer1.play()
        
    }
  
    var audioPlayer1 = AVAudioPlayer()
 
    func coreAudio(){
      
        var url1 = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(text, ofType: "mp3")!)
        var error:NSError?
        audioPlayer1 = AVAudioPlayer(contentsOfURL: url1, error: &error)
        audioPlayer1.prepareToPlay()
    
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        coreAudio()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

