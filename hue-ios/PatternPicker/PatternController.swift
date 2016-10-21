//
//  ViewController.swift
//  ColorPicker
//
//  Created by Matt King on 10/20/16.
//  Copyright © 2016 Matt. All rights reserved.
//

import UIKit

class PatternController: UIViewController {
    let pickerTypes: [PatternPickerType] = [.PhotoPicker, .ColorPicker]
    var pickerType: PatternPickerType = .PhotoPicker
    
    func update() {
        updatePickerType()
    }
    
    func updatePickerType() {
        let pickerTypeIndex = pickerTypes.index(of: pickerType)!
        pickerTypeControl.selectedSegmentIndex = pickerTypeIndex
        
        switch (pickerType) {
        case .PhotoPicker:
            let photoPickerController = childViewControllers[pickerTypeIndex] as! PatternPhotoController
            photoPickerController.updateParent()
            
            UIView.animate(withDuration: 0.5) {
                self.photoPickerView.alpha = 1
                self.colorPickerView.alpha = 0
            }
        case .ColorPicker:
            let colorPickerController = childViewControllers[pickerTypeIndex] as! PatternColorController
            colorPickerController.updateParent()
            
            UIView.animate(withDuration: 0.5) {
                self.photoPickerView.alpha = 0
                self.colorPickerView.alpha = 1
            }
        }
    }
    
    func updateResult(colors: [UIColor]) {
        resultView.colors = colors
    }
    
    // MARK: Outlets
    
    @IBOutlet weak var pickerTypeControl: UISegmentedControl!
    @IBOutlet weak var photoPickerView: UIView!
    @IBOutlet weak var colorPickerView: UIView!
    @IBOutlet weak var resultView: PatternResultView!
    
    // MARK: Actions
    
    @IBAction func pickerTypeChanged(_ sender: AnyObject) {
        pickerType = pickerTypes[pickerTypeControl.selectedSegmentIndex]
        update()
    }
    
    // MARK: UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        photoPickerView.alpha = 1
        colorPickerView.alpha = 0
        
        update()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

