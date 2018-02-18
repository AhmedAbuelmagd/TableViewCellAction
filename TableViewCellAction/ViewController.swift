//
//  ViewController.swift
//  TableViewCellAction
//
//  Created by Ahmed Abuelmagd on 2/18/18.
//  Copyright © 2018 Ahmed Abuelmagd. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    //Connection
    @IBOutlet weak var TableView: UITableView!
    //Variables & Constants
    var countries = [Country]()
    override func viewDidLoad() {
        super.viewDidLoad()
        let egypt = Country(name: "egypt", capital: "cairo")
        countries.append(egypt)
        let algeria = Country(name: "algeria", capital: "algeria")
        countries.append(algeria)
        let morocco = Country(name: "morocco", capital:"rabat")
        countries.append(morocco)
        let tunisia = Country(name:"tunisia", capital:"tunisia")
        countries.append(tunisia)
        let libya = Country(name:"libya", capital:"tripo")
        countries.append(libya)
        let egypt2 = Country(name: "egypt", capital: "cairo")
        countries.append(egypt2)
        let algeria2 = Country(name: "algeria", capital: "algeria")
        countries.append(algeria2)
        let morocco2 = Country(name: "morocco", capital:"rabat")
        countries.append(morocco2)
        let tunisia2 = Country(name:"tunisia", capital:"tunisia")
        countries.append(tunisia2)
        let libya2 = Country(name:"libya", capital:"tripo")
        countries.append(libya2)
        
        TableView.delegate = self
        TableView.dataSource = self
    }
    
   
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
    return countries.count
    }
    @available(iOS 2.0, *)
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = TableView.dequeueReusableCell(withIdentifier: "basicCell")
        cell?.textLabel?.text = countries[indexPath.row].name.capitalized
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showDetails", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? CountryViewController {
            destination.country = countries[(TableView.indexPathForSelectedRow?.row)!]
        }
    }

}

