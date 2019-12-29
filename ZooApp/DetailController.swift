//
//  DetailController.swift
//  ZooApp
//
//  Created by sayyid maulana khakul yakin on 29/12/19.
//  Copyright © 2019 sayyid maulana khakul yakin. All rights reserved.
//

import UIKit

class DetailController: UIViewController {
    @IBOutlet weak var imageDetail: UIImageView!
    @IBOutlet weak var titleDetail: UILabel!
    @IBOutlet weak var subtitleDetail: UILabel!
    
    var imgDetail:UIImage?
    var titlDetail:String?
    var subtitlDetail:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageDetail.image = imgDetail
        titleDetail.text = titlDetail
        subtitleDetail.text = subtitlDetail
        
        self.navigationItem.title = titlDetail
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
