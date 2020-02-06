//
//  ViewController.swift
//  WeatherApp
//
//  Created by David Rifkin on 10/8/19.
//  Copyright © 2019 David Rifkin. All rights reserved.
//

import UIKit

private let cellIdentifier = "MainCell"

class MainViewController: UIViewController {

    
private let mainView = MainView()
    
    
    override func loadView() {
        view = mainView
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationItem.title = "Search"
        mainView.collectionView.register(MainCell.self, forCellWithReuseIdentifier: cellIdentifier)
        mainView.collectionView.dataSource = self
    }


}

extension MainViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath)
        cell.backgroundColor = .red
        return cell
        
    }
    

}


extension MainViewController: UICollectionViewDelegateFlowLayout {

}
