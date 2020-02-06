//
//  MainView.swift
//  WeatherApp
//
//  Created by Ian Bailey on 2/4/20.
//  Copyright © 2020 David Rifkin. All rights reserved.
//

import UIKit

class MainView: UIView {

    public lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 200, height: 200)
        let view = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        view.backgroundColor = .blue
        return view
    }()

    public lazy var textField: UITextField = {
        let layout = UITextField(frame: CGRect(x: 10.0, y: 400.0, width: UIScreen.main.bounds.size.width - 20.0, height: 50))
        layout.backgroundColor = .yellow
        return layout
    }()
        
    public lazy var label: UILabel = {
        let layout = UILabel(frame: CGRect(x: 75.0, y: 500.0, width: UIScreen.main.bounds.size.width - 150.0, height: 50))
        layout.backgroundColor = .green
        return layout
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        setupCollectionViewContraints()
        addSubview(textField)
        addSubview(label)
    }
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupCollectionViewContraints()
        addSubview(textField)
        addSubview(label)
    }
    
    
    
    private func setupCollectionViewContraints() {
           addSubview(collectionView)
           collectionView.translatesAutoresizingMaskIntoConstraints = false
           NSLayoutConstraint.activate([
            
               collectionView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
               collectionView.leadingAnchor.constraint(equalTo: leadingAnchor),
               collectionView.heightAnchor.constraint(equalToConstant: 300),
               collectionView.trailingAnchor.constraint(equalTo: trailingAnchor)
               
           ])
    
    
    
}
}
