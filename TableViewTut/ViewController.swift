//
//  ViewController.swift
//  TableViewTut
//
//  Created by Drew Scheffer on 10/21/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let meals: [Meal] = [Meal(name: "Ramen", Description: "Tasty Tasty", prepTime: 5),
                         Meal(name: "Cereal", Description: "Sooo healthy", prepTime: 1),
                         Meal(name: "Sausage", Description: "Expensive!", prepTime: 50),
                         Meal(name: "Humans", Description: "SOOOO TASTY!!!", prepTime: 2),
                         Meal(name: "Hair", Description: "Grossss", prepTime: 14),
                         Meal(name: "Egg", Description: "Raw raw", prepTime: 90)
    ]
   
    override func viewDidLoad() {
        tableView.dataSource = self
        tableView.delegate = self
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count
    }
    
    
    
    //IndexPath.row is the index of the cell 0 --> numberOfRows
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MealTableCell", for: indexPath)
        
        //cell.textLabel?.text = "\(indexPath.row)"
        cell.textLabel?.text = meals[indexPath.row].name
        
        return cell
        
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.row)")
    }
}
