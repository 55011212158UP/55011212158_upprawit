//
//  ViewController.swift
//  Quiz1
//
//  Created by student on 11/14/14.
//  Copyright (c) 2014 Pramot. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UICollisionBehaviorDelegate{
    
    
    @IBOutlet weak var shoot: UIButton!
    @IBOutlet weak var jump: UIButton!

    
    let im = UIImageView()

    var square: UIView!
    var snap: UISnapBehavior!
    
    var animator: UIDynamicAnimator!
    var gravity: UIGravityBehavior!
    
    var collision: UICollisionBehavior!
    
    let coloredSquare = UIView()
    let duration = 1.0
    let delay = 0.0
    let options = UIViewAnimationOptions.CurveEaseInOut
    let damping = 0.5
    let velocity = 1.0
    
  
    
    
    @IBAction func jumpAc(sender: AnyObject) {
   
        animator = UIDynamicAnimator(referenceView: view)
        gravity = UIGravityBehavior(items: [im])
        animator.addBehavior(gravity)
        
        
        collision = UICollisionBehavior(items: [im])
        collision.translatesReferenceBoundsIntoBoundary = false
        animator.addBehavior(collision)
        
        
       
        

       
    }
    
    let barrier = UIView()
    let barrier2 = UIView()
    
    let c1 = UIImageView()
    let c2 = UIImageView()
    
    
    @IBAction func startShoot(sender: AnyObject) {
       barrier2.frame = CGRect(x: 50, y: 200, width: 150, height: 20)
       barrier.frame = CGRect(x: 100, y: 400, width: 100, height: 20)
    
       
        
        im.image = UIImage(named: "tiger.png")
        im.frame = CGRect(x: 50, y: 50, width: 50, height: 50)
        self.view.addSubview(im)
        
        
        
        animator = UIDynamicAnimator(referenceView: view)
        gravity = UIGravityBehavior(items: [im])
        animator.addBehavior(gravity)
        
        
        collision = UICollisionBehavior(items: [im])
        collision.translatesReferenceBoundsIntoBoundary = true
        animator.addBehavior(collision)
        
        collision.addBoundaryWithIdentifier("barrier", forPath: UIBezierPath(rect: barrier.frame))
        collision.addBoundaryWithIdentifier("barrier", forPath: UIBezierPath(rect: barrier2.frame))
     
        
        collision.action = {
            println("\(NSStringFromCGAffineTransform(self.im.transform)) \(NSStringFromCGPoint(self.im.center))")
        }
        
        
    
        
        collision.collisionDelegate = self
        let itemBahaviour = UIDynamicItemBehavior(items: [im])
        itemBahaviour.elasticity = 0.9
        animator.addBehavior(itemBahaviour)
        
        
        c1.image = UIImage(named: "cloud.png")
        c1.frame = CGRect(x: 50, y: 400, width: 150, height: 30)
        self.view.addSubview(c1)
        
        c2.image = UIImage(named: "cloud.png")
        c2.frame = CGRect(x: 100, y: 200, width: 100, height: 30)
        self.view.addSubview(c2)
        
        let options = UIViewAnimationOptions.Autoreverse|UIViewAnimationOptions.Repeat|UIViewAnimationOptions.CurveEaseInOut
        
        UIView.animateWithDuration(1.0, delay:0.0,options:options,animations: {
            self.c1.backgroundColor = UIColor.redColor()
            self.c1.frame = CGRect(x: 50+80, y: 400, width: 150, height: 30)
            
            self.c2.backgroundColor = UIColor.greenColor()
            self.c2.frame = CGRect(x: 100-150, y: 200, width: 100, height: 30)
            
            },completion:nil)
        
        
        UIView.animateWithDuration(duration,delay:0.0,usingSpringWithDamping: 0.5, initialSpringVelocity: 1.0, options:UIViewAnimationOptions.CurveEaseInOut,animations:{
            
            },completion:{finish in
                
        })

        
        
      // c1.backgroundColor = UIColor.redColor()
       view.addSubview(c1)
        
       //c2.backgroundColor = UIColor.greenColor()
       view.addSubview(c2)
        
        
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
       view.backgroundColor = UIColor.grayColor()
}

    func getRandomColor() -> UIColor{
        
        var randomRed:CGFloat = CGFloat(drand48())
        var randomGreen:CGFloat = CGFloat(drand48())
        var randomBlue:CGFloat = CGFloat(drand48())
        
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
        
    }
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
