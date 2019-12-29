//
//  ViewController.swift
//  ZooApp
//
//  Created by sayyid maulana khakul yakin on 29/12/19.
//  Copyright © 2019 sayyid maulana khakul yakin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var arrayTitle = ["Ayam", "Babi", "Hamster", "Singa"]
    var arraySubTitle = ["Ini Ayam", "Ini Babi", "Ini Hamster", "Ini Singa"]
    var imageArray = [UIImage(named: "ayam")!,UIImage(named: "babi")!,UIImage(named: "hamster")!,UIImage(named: "singa")!]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        self.navigationItem.title = "Zoo App"
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayTitle.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
//        cell.textLabel?.text = simpleOfArray[indexPath.row]
        cell.titleCell.text = arrayTitle[indexPath.row]
        cell.subtitleCell.text = arraySubTitle[indexPath.row]
        cell.imageCell.image = imageArray[indexPath.row]
        
        cell.imageCell.layer.cornerRadius = cell.imageCell.frame.height / 2
        cell.imageCell.clipsToBounds = true
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "detailController") as! DetailController
        controller.imgDetail = imageArray[indexPath.row]
        controller.titlDetail = arrayTitle[indexPath.row]
        controller.subtitlDetail = arraySubTitle[indexPath.row]
        self.navigationController?.pushViewController(controller, animated: true)
        print(indexPath.row)
    }
    
    
}
