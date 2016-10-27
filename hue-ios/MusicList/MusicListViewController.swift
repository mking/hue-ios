//
//  MusicListViewController.swift
//  hue-ios
//
//  Created by Mark Sun on 10/20/16.
//  Copyright © 2016 Hue. All rights reserved.
//

import UIKit

class MusicListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var selectedMusics = [Music]()
    var musicList = [Music]()
    
    let cellIdentifier = "MusicListTableViewCell"
    let recentMusics = [
        Music(name: "Recent Song 1", album: "Starboy", albumCover: #imageLiteral(resourceName: "starboy"), singer: "The Weend", composer: "The Weend")!,
        Music(name: "Recent Song 2", album: "The Chainsmokers Featuring Halsey", albumCover: #imageLiteral(resourceName: "closer"), singer: "The Chainsmokers", composer: "Andrew Taggart")!,
    ]
    let popularMusics = [
        Music(name: "Closer", album: "The Chainsmokers Featuring Halsey", albumCover: #imageLiteral(resourceName: "closer"), singer: "The Chainsmokers", composer: "Andrew Taggart")!,
        Music(name: "Starboy", album: "Starboy", albumCover: #imageLiteral(resourceName: "starboy"), singer: "The Weend", composer: "The Weend")!,
    ]
    
    // MARK: UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.MusicListTableView.delegate = self
        self.MusicListTableView.dataSource = self
        //self.MusicListTableView.register(MusicListTableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        loadMusics(musics: recentMusics)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func loadMusics(musics: [Music]) {
        self.musicList = musics
        MusicListTableView.reloadSections(IndexSet(integer: 0), with: .automatic)
        
        //        while self.musicList.count > 0 {
//            self.musicList.removeFirst()
//            MusicListTableView.deleteRows(at: [IndexPath(row: 0, section: 0)], with: .automatic)
//        }
        
//        for music in musics {
//            let newIndexPath = IndexPath(row: self.musicList.count, section: 0)
//            musicList.append(music)
//            MusicListTableView.insertRows(at: [newIndexPath], with: .bottom)
//        }
    }
    
    // MARK: Outlets
    @IBOutlet weak var MusicSelectorSegmentedControl: UISegmentedControl!
    @IBOutlet weak var MusicListTableView: UITableView!
    
    
    // MARK: Actions
    @IBAction func MusicSelectorChanged(_ sender: UISegmentedControl) {
        if MusicSelectorSegmentedControl.selectedSegmentIndex == 0 {
            loadMusics(musics: recentMusics)
        } else {
            loadMusics(musics: popularMusics)
        }
    }
    
    // MARK: Delegates
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return musicList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! MusicListTableViewCell
        
        // Fetches the appropriate meal for the data source layout.
        let music = musicList[indexPath.row]
        
        cell.checkBox.on = false
        cell.songName.text = music.name
        cell.albumCover.image = music.albumCover
        cell.album.text = music.album
        return cell
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
