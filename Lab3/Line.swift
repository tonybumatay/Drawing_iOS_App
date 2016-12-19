//
//  Line.swift
//  Lab3
//
//  Created by Tony Bumatay on 9/28/16.
//  Copyright © 2016 Tony Bumatay. All rights reserved.
//

import UIKit

class Line {
    var startPoint: CGPoint
    var endPoint: CGPoint
    var color: UIColor
    var penRadius: Int
    
    init(startPoint _startPoint: CGPoint, end _endPoint: CGPoint, color _color:UIColor!, penRadius _penRadius: Int){
        startPoint = _startPoint
        endPoint = _endPoint
        color = _color
        penRadius = _penRadius
    }
}
