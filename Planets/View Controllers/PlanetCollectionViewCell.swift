//
//  PlanetCollectionViewCell.swift
//  Planets
//
//  Created by Craig Swanson on 10/9/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit

class PlanetCollectionViewCell: UICollectionViewCell {
    
    var planet: Planet? {
        didSet {
            updateViews()
        }
    }
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textLabel: UILabel!
    
    func updateViews() {
        guard let planet = planet else { return }
        
        imageView.image = planet.image
        textLabel.text = planet.name
    }
    
}
