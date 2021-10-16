//
//  ProfileViewController.swift
//  NetworkNotification
//
//  Created by user on 16.10.2021.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet var ImageProfile: UIImageView!
    @IBOutlet var NameProfile: UILabel!
    @IBOutlet var AgeProfile: UILabel!
    @IBOutlet var CityProfile: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        takeInfoSession()
        giveMeInfoPlayer()
    }
    
    private func takeInfoSession() {
        let session = Session.instance
        session.fio = "Timeshkov Andrey"
        session.age = "32"
        session.city = "Йошкар-Ола"
        session.image = UIImage(imageLiteralResourceName: "Zuma")
    }
    
    private func giveMeInfoPlayer() {
        let session = Session.instance
        //ImageProfile = session.image
        NameProfile.text = session.fio
        AgeProfile.text = session.age
        CityProfile.text = session.city
        ImageProfile.image = session.image
    }
}
