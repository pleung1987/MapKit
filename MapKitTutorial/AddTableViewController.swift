//
//  AddTableViewController.swift
//  MapKitTutorial
//
//  Created by Patrick Leung on 17/3/2017.
//  Copyright © 2017 Thorn Technologies. All rights reserved.
//

import UIKit

class AddTableViewController: UITableViewController, AddLocationTableViewControllerDelegate {
    
    var items = ["pink Poodle", "Drunk Buddah", "Funky Twinker","Try again"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Loaded TableView NOW")
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:"ListItemCell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let navigationController = segue.destination as! UINavigationController
        let viewController = navigationController.topViewController as! ViewController
        viewController.delegate = self
    }
    
    func backButtonPressed(by controller: ViewController){
        print("I'm the hidden controller, but I am responding to the back button")
        dismiss(animated: true, completion: nil)
    }
    func SavedButton(by controller: ViewController, with lat: Double, with long: Double) {
        print("Recieved latitude from view:\(lat)")
        print("Recieved longitude from view:\(long)")
        dismiss(animated: true, completion: nil)
    }
}
