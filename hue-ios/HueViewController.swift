//
//  ViewController.swift
//  hue-ios
//
//  Created by Matt King on 10/17/16.
//  Copyright © 2016 Hue. All rights reserved.
//

import UIKit

class HueViewController: UIViewController {
    // MARK: Outlets
    
    @IBOutlet weak var colorView: UIView!
    
    // MARK: Actions
    
    @IBAction func tapPatternType(_ sender: UISegmentedControl) {
        print(sender.selectedSegmentIndex)
    }
    
    @IBAction func tapColorCube(_ sender: AnyObject) {
        let colorCube = CCColorCube()
        let image = UIImage(named: "Melone")
        let colors = colorCube.extractColors(from: image, flags: CCOnlyBrightColors.rawValue | CCAvoidWhite.rawValue | CCAvoidBlack.rawValue, count: 4)! as! [UIColor]
        
        let rectWidth = colorView.frame.width / 2
        let rectHeight = colorView.frame.height / 2
        
        let rectLayer1 = CAShapeLayer()
        rectLayer1.path = UIBezierPath(rect: CGRect(x: 0, y: 0, width: rectWidth, height: rectHeight)).cgPath
        rectLayer1.fillColor = colors[0].cgColor
        colorView.layer.addSublayer(rectLayer1)
        
        let rectLayer2 = CAShapeLayer()
        rectLayer2.path = UIBezierPath(rect: CGRect(x: rectWidth, y: 0, width: rectWidth, height: rectHeight)).cgPath
        rectLayer2.fillColor = colors[1].cgColor
        colorView.layer.addSublayer(rectLayer2)
        
        let rectLayer3 = CAShapeLayer()
        rectLayer3.path = UIBezierPath(rect: CGRect(x: rectWidth, y: rectHeight, width: rectWidth, height: rectHeight)).cgPath
        rectLayer3.fillColor = colors[2].cgColor
        colorView.layer.addSublayer(rectLayer3)
        
        let rectLayer4 = CAShapeLayer()
        rectLayer4.path = UIBezierPath(rect: CGRect(x: 0, y: rectHeight, width: rectWidth, height: rectHeight)).cgPath
        rectLayer4.fillColor = colors[3].cgColor
        colorView.layer.addSublayer(rectLayer4)
    }
    
    // MARK: UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

