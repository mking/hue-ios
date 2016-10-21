//
//  ViewController.swift
//  ColorPicker
//
//  Created by Matt King on 10/20/16.
//  Copyright © 2016 Matt. All rights reserved.
//

import UIKit

class PatternPhotoController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    static let emptyPhotoColors: [UIColor] = [.white, .white, .white, .white]
    
    var colors: [UIColor] = PatternPhotoController.emptyPhotoColors
    var parentPatternController: PatternController!
    
    func updateParent() {
        parentPatternController.updateResult(colors: colors)
    }
    
    func update() {
        if let image = photoView.image {
            photoView.isHidden = false
            emptyPhotoLabel.isHidden = true
            
            let colorCube = CCColorCube()
            self.colors = colorCube.extractColors(from: image, flags: CCAvoidWhite.rawValue | CCAvoidBlack.rawValue, count: 4) as! [UIColor]
        } else {
            photoView.isHidden = true
            emptyPhotoLabel.isHidden = false
            self.colors = PatternPhotoController.emptyPhotoColors
        }
    }
    
    // MARK: Outlets
    
    @IBOutlet weak var photoView: UIImageView!
    @IBOutlet weak var emptyPhotoLabel: UILabel!
    
    // MARK: Actions
    
    @IBAction func selectPhoto(_ sender: AnyObject) {        
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .photoLibrary
        imagePickerController.delegate = self
        present(imagePickerController, animated: true)
    }
    
    // MARK: UIImagePickerControllerDelegate
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        photoView.image = image
        dismiss(animated: true)
        update()
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

