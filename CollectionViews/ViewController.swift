//
//  ViewController.swift
//  CollectionViews
//
//  Created by Sandra Adams-Hallie on Mar/15/16.
//  Copyright © 2016 Sandra Adams-Hallie. All rights reserved.
//

import UIKit

class CollectionViewController: UICollectionViewController {
    
    var names = ["puppy1", "puppy2", "puppy3", "puppy4", "puppy5"]
    var images = [UIImage(named: "puppy1.jpg"), UIImage(named: "puppy2.jpg"), UIImage(named: "puppy3.jpg"), UIImage(named: "puppy4.jpg"), UIImage(named: "puppy5.jpg")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return names.count
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        var cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as UICollectionViewCell
        
        // After setting the tags for the image and label.
        var image = cell.viewWithTag(1) as! UIImageView
        image.image = images[indexPath.row]
        var name = cell.viewWithTag(2) as! UILabel
        name.text = names[indexPath.row]
        
        return cell
    }


}

