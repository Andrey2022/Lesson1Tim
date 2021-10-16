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
    var namesFriend = [String]()
    
    let cellId = "cell"

    @IBOutlet var collectionViewOutlet: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewOutlet.dataSource = self
        collectionViewOutlet.delegate = self
        uploadImage()
        
        collectionViewOutlet.register(
            UINib(nibName: "ImageCollectionViewCell", bundle: nil),
            forCellWithReuseIdentifier: cellId)
        collectionViewOutlet.sizeToFit()
    }
    
    //имитируем получение картинок и добавим их в массив images
    private func uploadImage(){
        if let image = UIImage(named: "Gonchik") {
            images.append(image)
            namesFriend.append("Gonchik")
        }
        if let image = UIImage(named: "Marshal") {
            images.append(image)
            namesFriend.append("Marshal")
        }
        if let image = UIImage(named: "Rokki") {
            images.append(image)
            namesFriend.append("Rokki")
        }
        if let image = UIImage(named: "Zuma") {
            images.append(image)
            namesFriend.append("Zuma")
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
        
        let cell = collectionViewOutlet.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! ImageCollectionViewCell
        let image = images[indexPath.item]
        let nameFriend = namesFriend[indexPath.item]
        cell.imageCell.image = image
        cell.nameFriendCell?.text = "Name friend: " + nameFriend
        
        return cell
    }
}
extension CollectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        let widthCell = 250
        let heightCell = 250
        

        return CGSize(width: widthCell, height: heightCell)
    }
}
