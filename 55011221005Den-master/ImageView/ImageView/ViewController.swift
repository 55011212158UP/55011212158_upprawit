//
//  ViewController.swift
//  ImageView
//
//  Created by student on 10/3/14.
//  Copyright (c) 2014 student. All rights reserved.
//

import UIKit
import AssetsLibrary

class ViewController: UIViewController, UINavigationControllerDelegate,UIImagePickerControllerDelegate {
    
    
    @IBOutlet weak var amountSlider: UISlider!
    @IBOutlet weak var ImageView: UIImageView!
    
    var context: CIContext!
    var filter: CIFilter!
    var beginImage: CIImage!
    var orientation: UIImageOrientation = .Up //new
    
  
    @IBAction func amoutSliderValueChanged(sender: UISlider) {
        
        let sliderValue = sender.value
        let outputImage = self.oldPhoto(beginImage,withAmount: sliderValue)
        let cgimg = context.createCGImage(outputImage, fromRect: outputImage.extent())
        let newImage = UIImage(CGImage: cgimg,scale:1,orientation:orientation)
        self.ImageView.image = newImage
        
    }
   
    @IBAction func loadPhoto(sender: AnyObject) {
        let pickerC = UIImagePickerController()
        pickerC.delegate = self
        self.presentViewController(pickerC, animated: true, completion: nil)
        
    }
    
    @IBAction func savePhoto(sender: AnyObject) {
        let imageToSave = filter.outputImage
        let softwareContext = CIContext(options:[kCIContextUseSoftwareRenderer: true])
        
        let cgimg = softwareContext.createCGImage(imageToSave, fromRect: imageToSave.extent())
        
       let library = ALAssetsLibrary()
       library.writeImageToSavedPhotosAlbum(cgimg,metadata:imageToSave.properties(),completionBlock: nil)
    }
    
     func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: NSDictionary!) {
        
        self.dismissViewControllerAnimated(true, completion: nil)
        let gotImage = info[UIImagePickerControllerOriginalImage] as UIImage
        
        beginImage = CIImage(image: gotImage)
        orientation = gotImage.imageOrientation
        filter.setValue(beginImage, forKey: kCIInputMaskImageKey)
        self.amoutSliderValueChanged(amountSlider)
    }

    func logAllFilters(){
        let properties = CIFilter.filterNamesInCategory(kCICategoryBuiltIn)
        println(properties)
        
        for filterName: AnyObject in properties{
            let fltr = CIFilter(name: filterName as String )
            println(fltr.attributes())
        }
    }
    
    func oldPhoto(img: CIImage, withAmount intensity: Float) -> CIImage{
        let sepia = CIFilter(name: "CISepiaTone")
        sepia.setValue(img, forKey: kCIInputImageKey)
        sepia.setValue(intensity, forKey: "inputIntensity")
        
        let random = CIFilter(name: "CIRandomGenerator")
        
        let lighten  = CIFilter(name: "CIColorControls")
        lighten.setValue(random.outputImage, forKey: kCIInputImageKey)
        lighten.setValue(1 - intensity, forKey: "inputBrightness")
        lighten.setValue(0, forKey: "inputSaturation")
        
        let croppedImage = lighten.outputImage.imageByCroppingToRect(beginImage.extent())
        
        let composite = CIFilter(name: "CIHardLightBlaendMode")
        composite.setValue(sepia.outputImage, forKey: kCIInputImageKey)
        composite.setValue(croppedImage, forKey: kCIInputBackgroundImageKey)
        
        let vigntte = CIFilter(name: "CIVignette")
        vigntte.setValue(composite.outputImage, forKey: kCIInputImageKey)
        vigntte.setValue(intensity * 2, forKey: "inputIntensity")
        vigntte.setValue(intensity * 30, forKey: "inputRadius")
        
        return vigntte.outputImage
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       let fileUIL = NSBundle.mainBundle().URLForResource("images", withExtension: "jpeg")
        beginImage = CIImage(contentsOfURL: fileUIL)
        
        filter = CIFilter(name: "CISepiaTone" )
        filter.setValue(beginImage, forKey: kCIInputImageKey)
        filter.setValue(0.5, forKey: kCIInputIntensityKey)
        
        let outputImage = filter.outputImage
        context = CIContext(options: nil)
        let cgimg = context.createCGImage(outputImage, fromRect: outputImage.extent())
        
        let newImage = UIImage(CGImage:cgimg)
        self.ImageView.image = newImage
        
        self.logAllFilters()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}































