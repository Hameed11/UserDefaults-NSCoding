//
//  VideoTableViewController.swift
//  UserDefaultsNSCoding
//
//  Created by Hameed Abdullah on 6/2/19.
//  Copyright © 2019 Hameed Abdullah. All rights reserved.
//

import UIKit
import SafariServices

class VideoTableViewController: UITableViewController, VideoCellDelegate {
 
    
    
    var videos: [Video] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        sampleVideos()
    }
    
    func sampleVideos() {

        let video1 = Video(videoTitle: "Conan & Jordan Schlansky Talk About Love 02/15/11 - CONAN on TBS", videoUrl: "https://youtu.be/389nJrZjK1w", videoImage: #imageLiteral(resourceName: "conan1"))
        
        let video2 = Video(videoTitle: "Conan Takes Jordan Schlansky Coffee Tasting - CONAN on TBS", videoUrl: "https://youtu.be/fVDOB9mby_w", videoImage: #imageLiteral(resourceName: "conan2"))

        let video3 = Video(videoTitle: "Conan Forces Jordan Schlansky To Clean His Filthy Office", videoUrl: "https://youtu.be/389nJrZjK1w", videoImage: #imageLiteral(resourceName: "conan3"))

        let video4 = Video(videoTitle: "Conan & Jordan Schlansky Talk About Love 02/15/11 - CONAN on TBS", videoUrl: "https://youtu.be/389nJrZjK1w", videoImage: #imageLiteral(resourceName: "conan1"))

        let video5 = Video(videoTitle: "Conan & Jordan Schlansky Talk About Love 02/15/11 - CONAN on TBS", videoUrl: "https://youtu.be/389nJrZjK1w", videoImage: #imageLiteral(resourceName: "conan1"))
        
        let video6 = Video(videoTitle: "Conan & Jordan Schlansky Talk About Love 02/15/11 - CONAN on TBS", videoUrl: "https://youtu.be/389nJrZjK1w", videoImage: #imageLiteral(resourceName: "conan1"))
        
        let video7 = Video(videoTitle: "Conan & Jordan Schlansky Talk About Love 02/15/11 - CONAN on TBS", videoUrl: "https://youtu.be/389nJrZjK1w", videoImage: #imageLiteral(resourceName: "conan1"))
      
        videos += [video1, video2, video3, video4, video5, video6, video7]
        
        
    }
    
    func didTapWatchNow(url: String) {
        
        guard let url = URL(string: url) else { return }
        
        let safariViewController: SFSafariViewController = SFSafariViewController(url: url)
        present(safariViewController, animated: true, completion: nil)
        
    }
    
    func didTapSave() {
        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return videos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell", for: indexPath) as! VideoTableViewCell

        // Configure the cell...
        let video =  videos[indexPath.row]
       cell.video = video
       cell.videoDelegate = self

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
