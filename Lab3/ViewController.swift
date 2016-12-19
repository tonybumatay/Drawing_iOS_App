//
//  ViewController.swift
//  Lab3
//
//  Created by Tony Bumatay on 9/26/16.
//  Copyright © 2016 Tony Bumatay. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var canvas: DrawView!
    @IBAction func clearTapped(sender: UIButton) {
        canvas.allLines.removeAll()
        canvas.setNeedsDisplay()
    }
    
    @IBAction func undoTapped(sender: UIButton) {
        let numToDrop = canvas.segmentCounter.last!
        for _ in 1...numToDrop {
            if canvas.allLines.count > 0{
                canvas.allLines.removeLast()
            }
            }
        canvas.setNeedsDisplay()
    }

    @IBAction func colorTapped(button: UIButton!){
        var color : UIColor!
        if button.titleLabel!.text == "Red" {
            color = UIColor.redColor()
        } else if button.titleLabel!.text == "Orange" {
            color = UIColor.orangeColor()
        } else if button.titleLabel!.text == "Yellow" {
            color = UIColor.yellowColor()
        } else if button.titleLabel!.text == "Green" {
            color = UIColor(red: 45/255, green: 134/255, blue: 45/255, alpha: 1)
        } else if button.titleLabel!.text == "Blue" {
            color = UIColor.blueColor()
        } else if button.titleLabel!.text == "Indigo"{
            color = UIColor(red: 75/255, green: 0/255, blue: 130/255, alpha: 1)
        } else if button.titleLabel!.text == "Violet" {
            color = UIColor(red: 238/255, green: 130/255, blue: 238/255, alpha: 1)
        } else if button.titleLabel!.text == "Brown" {
            color = UIColor.brownColor()
        } else if button.titleLabel!.text == "Gray" {
            color = UIColor.grayColor()
        } else if button.titleLabel!.text == "Black" {
            color = UIColor.blackColor()
        } else if button.titleLabel!.text == "Eraser" {
            color = UIColor.whiteColor()
        }
        canvas.drawColor = color
    }
    
    @IBAction func changePenRadiusSlider(sender: UISlider) {
        let currentValue = Int(sender.value)
        canvas.myPenRadius = currentValue
        
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

