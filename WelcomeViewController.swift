//
//  WelcomeViewController.swift
//  hue-ios
//
//  Created by Matt King on 11/4/16.
//  Copyright © 2016 devhue. All rights reserved.
//

import UIKit
import Alamofire
import MediaPlayer

class WelcomeViewController: UIViewController, MPMediaPickerControllerDelegate {
    // MARK: Properties
    
    // MARK: Outlets
    
    // MARK: Actions
    @IBAction func findBridges(_ sender: AnyObject) {
        // show the modal
        let picker = MPMediaPickerController(mediaTypes: .anyAudio)
        picker.delegate = self
        picker.allowsPickingMultipleItems = true
        picker.prompt = "Add songs to play"
        present(picker, animated: true, completion: nil)
        
        // Get list of songs from music library
        //let player = MPMusicPlayerController.applicationMusicPlayer()
        //player.setQueue(with: MPMediaQuery.songs())
        //player.play()
        
        // Get bridge and username from UserDefaults
        /*
        let bridgeIP = UserDefaults.standard.string(forKey: "bridgeIP")
        let username = UserDefaults.standard.string(forKey: "username")
        if let username = username, let bridgeIP = bridgeIP {
            // already logged in
            // it might not work
            
            // how to get music library?
        } else {
            // start bridge search
        }
 */
 
        //UserDefaults.standard.set("192.168.1.130", forKey: "bridgeIP")
        //UserDefaults.standard.set("xwhSxiGFgPVjPFesFqk8K-KBMfANXx786tAz3odh", forKey: "username")
        
        /*
        let bridgeIP = "192.168.1.130"
        let username = "xwhSxiGFgPVjPFesFqk8K-KBMfANXx786tAz3odh"
        Alamofire.request("http://\(bridgeIP)/api/\(username)/lights").responseJSON { response in
            if let json = response.result.value {
                print(json)
            }
        }
        */
        
        //PHBridgeSearching
        
        /*
        let deviceType = "devhue#\(UIDevice.current.name)"
        let connectBridgeURL = "http://\(bridgeIP)/api"
        
        let parameters: Parameters = [
            "devicetype": deviceType
        ]
        Alamofire.request(connectBridgeURL, method: .post, parameters: parameters, encoding: JSONEncoding.default).responseJSON { response in
            if let json = response.result.value {
                print("JSON array: \(json)")
            }
        }*/
    }
    
    // MARK: MPMediaPickerControllerDelegate
    func mediaPicker(_ mediaPicker: MPMediaPickerController, didPickMediaItems mediaItemCollection: MPMediaItemCollection) {
        dismiss(animated: true, completion: nil)
        
        //mediaItemCollection.items.map { item in item.persistentID }
        
        //UserDefaults.standard.set(mediaItemCollection, forKey: "collection")
        //let player = MPMusicPlayerController.applicationMusicPlayer()
        //player.setQueue(with: mediaItemCollection)
        //player.play()
    }
    
    func mediaPickerDidCancel(_ mediaPicker: MPMediaPickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    // MARK: UIViewController
}
