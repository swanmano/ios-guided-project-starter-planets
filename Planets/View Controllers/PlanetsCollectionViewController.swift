//
//  PlanetsCollectionViewController.swift
//  Planets
//
//  Created by Craig Swanson on 10/9/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit

class PlanetsCollectionViewController: UICollectionViewController {

    let planetController = PlanetController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        collectionView.reloadData()
    }

    @IBAction func unwindToPlanetsCollectionViewController(_ sender: UIStoryboardSegue) {
        collectionView.reloadData()
    }

    // MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return planetController.planets.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PlanetCell", for: indexPath) as? PlanetCollectionViewCell else { fatalError("The cell was not found") }
    
        let planet = planetController.planets[indexPath.item]
        cell.planet = planet
        return cell
    }

    // MARK: UICollectionViewDelegate


}
