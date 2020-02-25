//
//  CategoryCell.swift
//  GoodEatins
//
//  Created by Sherif on 2/23/20.
//  Copyright © 2020 Sherif. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryTitle: UILabel!
    @IBOutlet weak var categoryImg: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        categoryImg.layer.cornerRadius = 10
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(category : FoodCategory){
        categoryTitle.text = category.title
        categoryImg.image = UIImage(named: category.imageName)
    }
}
