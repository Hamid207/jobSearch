//
//  IconSecondMainCollectionViewCell.swift
//  MarketApp.1
//
//  Created by Manafov Hamid on 11/11/20.
//  Copyright © 2020 Manafov Hamid. All rights reserved.
//

import UIKit

class IconSecondMainCollectionViewCell: UICollectionViewCell {
	
	let nameLabel: UILabel = {
		let label = UILabel()
		label.font = UIFont.systemFont(ofSize: 15, weight: .medium)
		label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
		label.textAlignment = .left
		label.minimumScaleFactor = 0.2
		label.numberOfLines = 3
		label.sizeToFit()
		label.lineBreakMode = .byWordWrapping
		label.adjustsFontSizeToFitWidth = true
		label.translatesAutoresizingMaskIntoConstraints = false
		//label.backgroundColor = .orange
		return label
	}()
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		setup()
	}
	
	func setup() {
		backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
		addSubview(nameLabel)
		nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5).isActive = true
		nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5).isActive = true
		nameLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
	}
	
	override func layoutSubviews() {
		super.layoutSubviews()
		layer.cornerRadius = 10
	}

	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}
