//
//  SessionClass.swift
//  NetworkNotification
//
//  Created by user on 16.10.2021.
//

import UIKit

class Session {
    
    var fio = ""
    var age = ""
    var city = ""
    var image = UIImage()
    
    // for homework
    var token: String?
    var userId: Int?
    
    static let instance = Session()
    
    private init() {}

}
