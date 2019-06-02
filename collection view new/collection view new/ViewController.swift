//
//  ViewController.swift
//  collection view new
//
//  Created by Sandip on 6/3/19.
//  Copyright © 2019 ShayonaPayal. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource{
    
    

    @IBOutlet weak var collectionView: UICollectionView!
    let  lab = ["Suit","T-Shirt","Formal Shirt","Casual t-shirt","fancy t-shirt","suit"]
    let im = [#imageLiteral(resourceName: "first"),#imageLiteral(resourceName: "second"),#imageLiteral(resourceName: "third"),#imageLiteral(resourceName: "fourth"),#imageLiteral(resourceName: "fifth"),#imageLiteral(resourceName: "sixth")]
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return lab.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)as! CollectionViewCell
        cell.l1.text = lab[indexPath.item]
        cell.ima.image = im[indexPath.item]
        
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 1
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.layer.borderColor = UIColor.gray.cgColor
        cell?.layer.borderWidth = 3
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController")as? DetailViewController
        vc?.name = lab[indexPath.row]
        vc?.image = im[indexPath.row]
     //   vc?.img.image = UIImage(named:)
      //  var image = UIImage(named: "helmet")!
       //vc.ima.image = UIImage(named: "helmet")!
        self.navigationController?.pushViewController(vc!, animated: true)
        
    }
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.layer.borderColor = UIColor.lightGray.cgColor
        cell?.layer.borderWidth = 1
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

