//
//  ViewController.swift
//  Square
//
//  Created by student on 11/7/14.
//  Copyright (c) 2014 Pramot. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController, UICollisionBehaviorDelegate {

   
    var square: UIView!
    var snap: UISnapBehavior!
    
    var animator: UIDynamicAnimator!
    var gravity: UIGravityBehavior!
    
    var collision: UICollisionBehavior!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let barrier = UIView(frame: CGRect(x: 0, y: 300, width: 150, height: 20))
        let barrier2 = UIView(frame: CGRect(x: 100, y: 400, width: 100, height: 20))
        
        square = UIView(frame: CGRect(x: 100, y: 100, width: 70, height: 70))
        square.backgroundColor = UIColor.grayColor()
        view.addSubview(square)
        
        
        animator = UIDynamicAnimator(referenceView: view)
        gravity = UIGravityBehavior(items: [square])
        animator.addBehavior(gravity)
        
        
        
        
        collision = UICollisionBehavior(items: [square])
        collision.translatesReferenceBoundsIntoBoundary = true
        animator.addBehavior(collision)
        collision.addBoundaryWithIdentifier("barrier", forPath: UIBezierPath(rect: barrier.frame))
        collision.addBoundaryWithIdentifier("barrier", forPath: UIBezierPath(rect: barrier2.frame))
        
        collision.action = {
            println("\(NSStringFromCGAffineTransform(self.square.transform)) \(NSStringFromCGPoint(self.square.center))")
        }
        
        collision.collisionDelegate = self
        let itemBahaviour = UIDynamicItemBehavior(items: [square])
        itemBahaviour.elasticity = 0.3
        animator.addBehavior(itemBahaviour)
        
       
        barrier.backgroundColor = UIColor.redColor()
        view.addSubview(barrier)
        
        barrier2.backgroundColor = UIColor.greenColor()
        view.addSubview(barrier2)
        
      
    }
   
    func collisionBehavior(behavior:UICollisionBehavior!,beganContactForItem item:UIDynamicItem!,withBoundaryIdentifier identifier:NSCopying!,atPoint p: CGPoint){
        
        println("Boundary contact occurred - \(identifier)")
        
        let collidingView = item as UIView
        collidingView.backgroundColor = UIColor.yellowColor()
        UIView.animateWithDuration(1){
            collidingView.backgroundColor = UIColor.grayColor()
        }
        
        var firstContact = false
        if(!firstContact){
            firstContact = true
            
            let square = UIView(frame: CGRect(x: 30, y: 0, width: 10, height: 10))
            
//            let square = UIView(frame: CGRect(x: self.view.frame.origin.x + self.square.frame.origin.x, y: self.view.frame.origin.y + self.square.frame.origin.y, width: 10, height: 10))
            square.backgroundColor = getRandomColor()
            view.addSubview(square)
            
            collision.addItem(square)
            gravity.addItem(square)
            
            let attach = UIAttachmentBehavior(item: collidingView, attachedToItem: square)
            animator.addBehavior(attach)
            
            
        }
        
    }

    func getRandomColor() -> UIColor{
    
    var randomRed:CGFloat = CGFloat(drand48())
    var randomGreen:CGFloat = CGFloat(drand48())
    var randomBlue:CGFloat = CGFloat(drand48())
    
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
    
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        if(snap != nil){
            animator.removeBehavior(snap)
            
        }
        let touch = touches.anyObject() as UITouch
        snap = UISnapBehavior(item: square, snapToPoint: touch.locationInView(view))
        animator.addBehavior(snap)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func panning(pan: UIPanGestureRecognizer){
        println("Our box is panning")
        var location = pan.locationInView(self.square)
        if pan.state == UIGestureRecognizerState.Began {
            self.animator!.removeAllBehaviors()
            self.square!.center = location
            
        }else if pan.state == UIGestureRecognizerState.Changed{
            self.square!.center = location
            
        }else if pan.state == UIGestureRecognizerState.Ended{
            self.animator!.addBehavior(self.gravity)
            self.animator!.addBehavior(self.collision)
        }
        
        
    }
    

}

