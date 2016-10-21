//
//  MusicListViewController.swift
//  hue-ios
//
//  Created by Mark Sun on 10/20/16.
//  Copyright © 2016 Hue. All rights reserved.
//

import UIKit

class MusicListViewController: UIViewController {

    var selectedMusics : [Music]!
    func loadSelectedMusics() {
        selectedMusics = []
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Outlets
    @IBOutlet weak var MusicSelectorSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var RecentMusicListView: UIView!
    @IBOutlet weak var PopularMusicListView: UIView!
    
    
    // MARK: Actions
    @IBAction func MusicSelectorChanged(_ sender: UISegmentedControl) {
        if MusicSelectorSegmentedControl.selectedSegmentIndex == 0 {
            
        }
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
