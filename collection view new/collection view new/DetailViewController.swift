//
//  DetailViewController.swift
//  collection view new
//
//  Created by Sandip on 6/3/19.
//  Copyright © 2019 ShayonaPayal. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var lbl: UILabel!
    
    var name = ""
    var image = UIImage()
 
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl.text = name
        img.image = image
   //     img.image = UIImage[named:name]
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
