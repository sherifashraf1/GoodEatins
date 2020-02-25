//
//  ViewController.swift
//  GoodEatins
//
//  Created by Sherif on 2/21/20.
//  Copyright © 2020 Sherif. All rights reserved.
//

import UIKit

class HomeVC: UIViewController, UITableViewDataSource , UITableViewDelegate {
    
    let data = DataSet()
    var categoryToPass : String!
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath) as! CategoryCell
        let category = data.categories[indexPath.row]
        cell.configureCell(category:category)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        categoryToPass = data.categories[indexPath.row].title
        performSegue(withIdentifier: "toRecipeSelectionVC", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? RecipesSelectionVC{
            destination.selectedCategory = categoryToPass
        }
    }
    
    
}


