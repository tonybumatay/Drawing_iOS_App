//
//  DrawView.swift
//  Lab3
//
//  Created by Tony Bumatay on 9/28/16.
//  Copyright © 2016 Tony Bumatay. All rights reserved.
//

import UIKit

class DrawView: UIView {
    
    var allLines: [Line] = []
    var tempSegmentCounter = 0;
    var segmentCounter: [Int] = []
    var lastPoint: CGPoint!
    var drawColor = UIColor.blackColor()
    var myPenRadius = 10
    

    required init(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)!
        //initialization here
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        lastPoint = (touches.first)!.locationInView(self)
        allLines.append(Line(startPoint: lastPoint, end: lastPoint, color: drawColor, penRadius: myPenRadius))
        tempSegmentCounter++
        self.setNeedsDisplay()
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let newPoint = (touches.first)!.locationInView(self)
        allLines.append(Line(startPoint: lastPoint, end: newPoint, color: drawColor, penRadius: myPenRadius))
        lastPoint = newPoint
        tempSegmentCounter++
        self.setNeedsDisplay()
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        segmentCounter.append(tempSegmentCounter)
        tempSegmentCounter = 0
    }
    
    
    //when I want to delete segments
    //dele
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        CGContextBeginPath(context)
        CGContextSetLineCap(context, CGLineCap.Round)

        for line in allLines{
            CGContextMoveToPoint(context, line.startPoint.x, line.startPoint.y)
            CGContextAddLineToPoint(context, line.endPoint.x, line.endPoint.y)
            CGContextSetLineWidth(context, CGFloat(line.penRadius))
            CGContextSetStrokeColorWithColor(context, line.color.CGColor)
            CGContextStrokePath(context)
        }
        
        
    }
    

}
