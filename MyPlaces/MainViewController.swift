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
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        
        
        let restaurant = restaurantNames[indexPath.row]
        cell.nameLabel?.text = restaurant
        cell.imageOfPlace?.image = UIImage(named: restaurant)
        cell.imageOfPlace?.layer.cornerRadius = cell.imageOfPlace.frame.size.height / 2
        cell.imageOfPlace?.clipsToBounds = true
        
        return cell
    }
    
    //MARK: - Table View Delegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    // MARK: - Navigation

    //override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    //}

}