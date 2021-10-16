//
//  CollectionViewController.swift
//  NetworkNotification
//
//  Created by user on 16.10.2021.
//

import UIKit

class CollectionViewController: UIViewController {
    
    // Массив для фото
    var images = [UIImage]()

    @IBOutlet var collectionViewOutlet: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewOutlet.dataSource = self
        collectionViewOutlet.delegate = self
        uploadImage()
    }
    
    //имитируем получение картинок и добавим их в массив images
    private func uploadImage(){
        if let image = UIImage(named: "Gonchik") {
            images.append(image)
        }
        if let image = UIImage(named: "Marshal") {
            images.append(image)
        }
        if let image = UIImage(named: "Rokki") {
            images.append(image)
        }
        if let image = UIImage(named: "Zuma") {
            images.append(image)
        }
    }
}

extension CollectionViewController: UICollectionViewDelegate {
    
    
}

extension CollectionViewController: UICollectionViewDataSource {
    
    // колличество элементов в секции
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionViewOutlet.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! ImageCollectionViewCell
        let image = images[indexPath.item]
        cell.imageCell.image = image
        
        return cell
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
