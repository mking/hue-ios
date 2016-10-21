//
//  ViewController.swift
//  ColorPicker
//
//  Created by Matt King on 10/20/16.
//  Copyright © 2016 Matt. All rights reserved.
//

import UIKit

class PatternColorController: UIViewController {
    var color: UIColor = .red
    var parentPatternController: PatternController!
    
    func update() {
        colorPickerView.color = color
    }
    
    func updateParent() {
        parentPatternController.updateResult(colors: [self.color, self.color, self.color, self.color])
    }
    
    // MARK: Outlets
    
    @IBOutlet weak var colorPickerView: HRColorPickerView!
    
    // MARK: Actions
        
    @IBAction func colorChanged(_ sender: HRColorPickerView) {
        self.color = sender.color!
        updateParent()
    }
    
    // MARK: UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        update()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func didMove(toParentViewController parent: UIViewController?) {
        super.didMove(toParentViewController: parent)
        parentPatternController = parent as! PatternController!
    }
}

