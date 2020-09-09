//
//  ViewController.swift
//  Youtube Video Embed
//
//  Created by Adwait Barkale on 09/09/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    
    @IBOutlet weak var table: UITableView!
    
    let arrVideoID = [
    "_WOwOVNEfzY", //video player
    "4Zf9dHDJ2yU", //QR Code Scaner
    "d0U5j89M6aI", //Face Detecion
    "NNKPbdT9gXU",//ML  APp
    "JTtYSJtVKMc" //Core Data
    ]
    
    let arrVideoTitle =
    [
    "Xcode Make a Video Player App in Swift 4",
    "Make a QR Code Scanner in Xcode in Swift 4",
    "Face Detection in Xcode using Swift 4",
    "Xcode Create your first ML App in Swift 4",
    "Xcode CoreData Tutorial (Part 1) in Swift 4"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
        table.rowHeight = UITableView.automaticDimension
        navigationController?.navigationBar.backgroundColor = .red
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrVideoID.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "VideoViewCell") as! VideoViewCell
        cell.lblTitle.text = arrVideoTitle[indexPath.row]
        let url = URL(string: "https://www.youtube.com/embed/\(arrVideoID[indexPath.row])")
        cell.webView.load(URLRequest(url: url!))
        return cell
    }

}

