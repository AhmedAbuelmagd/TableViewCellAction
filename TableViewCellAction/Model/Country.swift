//
//  Country.swift
//  TableViewCellAction
//
//  Created by Ahmed Abuelmagd on 2/18/18.
//  Copyright © 2018 Ahmed Abuelmagd. All rights reserved.
//

import UIKit
class Country {
    var name : String
    var capital : String
    var image : UIImage
    
    init(name:String, capital:String){
        self.name = name
        self.capital = capital
        image = UIImage(named: self.name)!
    }
}
