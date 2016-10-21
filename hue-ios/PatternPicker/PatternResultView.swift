//
//  ResultView.swift
//  ColorPicker
//
//  Created by Matt King on 10/20/16.
//  Copyright © 2016 Matt. All rights reserved.
//

import UIKit

class PatternResultView: UIView {
    var colors: [UIColor] = [.white, .white, .white, .white] {
        didSet {
            setNeedsDisplay()
        }
    }
    
    override func draw(_ rect: CGRect) {
        let rectWidth = frame.width / 2
        let rectHeight = frame.height / 2
        
        let rectPath1 = UIBezierPath(rect: CGRect(x: 0, y: 0, width: rectWidth, height: rectHeight))
        colors[0].setFill()
        rectPath1.fill()
        
        let rectPath2 = UIBezierPath(rect: CGRect(x: rectWidth, y: 0, width: rectWidth, height: rectHeight))
        colors[1].setFill()
        rectPath2.fill()
        
        let rectPath3 = UIBezierPath(rect: CGRect(x: rectWidth, y: rectHeight, width: rectWidth, height: rectHeight))
        colors[2].setFill()
        rectPath3.fill()
        
        let rectPath4 = UIBezierPath(rect: CGRect(x: 0, y: rectHeight, width: rectWidth, height: rectHeight))
        colors[3].setFill()
        rectPath4.fill()
    }
}
