//
//  MainViewController.swift
//  MyPlaces
//
//  Created by Юрий Федоров on 03.08.2020.
//

import UIKit

class MainViewController: UITableViewController {
    
    let restaurantNames = [
                            "Burger King", "McDonalds", "Dve palochki", "Pizza Hut",
                            "Carl's Junior", "Marchelli's", "Tokyo City"
                            ]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return restaurantNames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = restaurantNames[indexPath.row]

        return cell
    }
    
    // MARK: - Navigation

    //override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    //}

}
