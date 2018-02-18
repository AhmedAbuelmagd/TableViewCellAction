//
//  CountryViewController.swift
//  TableViewCellAction
//
//  Created by Ahmed Abuelmagd on 2/18/18.
//  Copyright © 2018 Ahmed Abuelmagd. All rights reserved.
//

import UIKit

class CountryViewController: UIViewController {
    //Connections
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var countryLbl: UILabel!
    @IBOutlet weak var capitalLbl: UILabel!
    
    //Variables & Constants
    var country:Country!
    override func viewDidLoad() {
        super.viewDidLoad()
        countryLbl.text = "Country : \(country.name.capitalized)"
        capitalLbl.text = "Capital : \(country.capital.capitalized)"
        imageView.image = country.image
    }

}
