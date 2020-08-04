//
//  MainViewController.swift
//  MyPlaces
//
//  Created by Юрий Федоров on 03.08.2020.
//

import UIKit

class MainViewController: UITableViewController {
    
    let restaurantNames = [
                            "Burger Heroes", "Kitchen", "Bonsai", "Дастархан",
                            "Индокитай", "X.O", "Балкан Гриль", "Sherlock Holmes",
                            "Speak Easy", "Morris Pub", "Вкусные истории",
                            "Классик", "Love&Life", "Шок", "Бочка"
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
        let restaurant = restaurantNames[indexPath.row]
        cell.textLabel?.text = restaurant
        cell.imageView?.image = UIImage(named: restaurant)

        return cell
    }
    
    // MARK: - Navigation

    //override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    //}

}
