//
//  MainViewController.swift
//  MyPlaces
//
//  Created by Юрий Федоров on 03.08.2020.
//

import UIKit

class MainViewController: UITableViewController {
    
    let places = Place.getPlaces()
        
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return places.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        
        
        let place = places[indexPath.row]
        cell.nameLabel?.text = place.name
        cell.locationLabel.text = place.location
        cell.typeLabel.text = place.type
        cell.imageOfPlace?.image = UIImage(named: place.image)
        cell.imageOfPlace?.layer.cornerRadius = cell.imageOfPlace.frame.size.height / 2
        cell.imageOfPlace?.clipsToBounds = true
        
        return cell
    }
    
    // MARK: - Navigation

    //override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    //}

    @IBAction func cancelAction(_ segue: UIStoryboardSegue) {}
    
}
