//
//  MemeCollectionViewController.swift
//  MemeTest1
//
//  Created by 김홍순 on 2017. 1. 28..
//  Copyright © 2017년 Hongsun. All rights reserved.
//

import UIKit

class MemeCollectionViewController: UICollectionViewController {

    @IBOutlet weak var flowLayout: UICollectionViewFlowLayout!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
//        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "MemeCollectionViewCell")

        // Do any additional setup after loading the view.
        
        let space: CGFloat = 3.0
        let dimension = (self.view.frame.size.width - (2 * space)) / 3.0
        
        flowLayout.minimumInteritemSpacing = space
        flowLayout.minimumLineSpacing = space
        flowLayout.itemSize = CGSize(width: dimension, height: dimension)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.collectionView?.reloadData()
    }
    
    // MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let count = (UIApplication.shared.delegate as! AppDelegate).memes.count
        return count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MemeCollectionViewCell", for: indexPath) as! MemeCollectionViewCell
        
        cell.memeImageView.image = (UIApplication.shared.delegate as! AppDelegate).memes[indexPath.row].memedImage
        
        return cell
    }

    @IBAction func addImage(_ sender: Any) {
        let createMemeViewController = self.storyboard?.instantiateViewController(withIdentifier: "CreateMemeViewController") as! ViewController
        present(createMemeViewController, animated: true, completion: nil)
    }

}
