//
//  RecipeCell.swift
//  GoodEatins
//
//  Created by Sherif on 2/23/20.
//  Copyright © 2020 Sherif. All rights reserved.
//

import UIKit

class RecipeCell: UICollectionViewCell {
    
    @IBOutlet weak var recipeImg: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        recipeImg.layer.cornerRadius = 10
    }
    
    func configureCell(recipe : Recipe){
        recipeImg.image = UIImage(named: recipe.imageName)
    }
    
}

