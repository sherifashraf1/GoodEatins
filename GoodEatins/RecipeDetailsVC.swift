//
//  RecipeDetailsVC.swift
//  GoodEatins
//
//  Created by Sherif on 2/23/20.
//  Copyright © 2020 Sherif. All rights reserved.
//

import UIKit

class RecipeDetailsVC: UIViewController {
    @IBOutlet weak var recipeImg: UIImageView!
    @IBOutlet weak var recipeTitle: UILabel!
    @IBOutlet weak var recipeInstructions: UILabel!

    var selectedRecipe : Recipe!

    override func viewDidLoad() {
        super.viewDidLoad()

        recipeImg.image = UIImage(named: selectedRecipe.imageName)
        recipeTitle.text = selectedRecipe.title
        recipeInstructions.text = selectedRecipe.instructions
    }
    
}
