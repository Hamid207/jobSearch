//
//  DetailTableViewCell.swift
//  MarketApp.1
//
//  Created by Manafov Hamid on 11/12/20.
//  Copyright © 2020 Manafov Hamid. All rights reserved.
//

import UIKit

class DetailTableViewCell: UITableViewCell {
	//nameLabel
	 private let nameLabel: UILabel = {
		let label = UILabel()
		label.font = UIFont.systemFont(ofSize: 25, weight: .medium)
		label.textColor = #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)
		label.textAlignment = .left
		label.minimumScaleFactor = 0.2
		label.numberOfLines = 3
		label.sizeToFit()
		label.lineBreakMode = .byWordWrapping
		label.adjustsFontSizeToFitWidth = true
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	//cityLabel
	private let cityLabel: UILabel = {
		let label = UILabel()
		label.font = UIFont.systemFont(ofSize: 15, weight: .medium)
		label.textColor = #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)
		label.textAlignment = .left
		label.sizeToFit()
		label.adjustsFontSizeToFitWidth = true
		label.minimumScaleFactor = 0.2
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	   }()
	
	//priceLabel
	 private let priceLabel: UILabel = {
		let label = UILabel()
		label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
		label.textColor = #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)
		label.textAlignment = .left
		label.sizeToFit()
		label.adjustsFontSizeToFitWidth = true
		label.minimumScaleFactor = 0.2
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	//infoTextLabel
	private let infoTextLabel: UILabel = {
		let label = UILabel()
		label.font = UIFont.systemFont(ofSize: 20, weight: .light)
		label.textColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
		label.minimumScaleFactor = 0.2
		label.textAlignment = .left
		label.numberOfLines = 0
		label.lineBreakMode = .byWordWrapping
		label.sizeToFit()
		label.adjustsFontSizeToFitWidth = true
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	//cilientNameLabel
	private let cilientNameLabel: UILabel = {
		let label = UILabel()
		label.font = UIFont.systemFont(ofSize: 15, weight: .heavy)
		label.textColor = UIColor(named: "MainColor")
		label.textAlignment = .left
		label.adjustsFontSizeToFitWidth = true
		label.minimumScaleFactor = 0.2
		label.sizeToFit()
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	//odemeLabel
	private let odemeLabel: UILabel = {
		let label = UILabel()
		label.font = UIFont.systemFont(ofSize: 17, weight: .medium)
		label.textColor = #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)
		label.textAlignment = .center
		label.adjustsFontSizeToFitWidth = true
		label.minimumScaleFactor = 0.2
		label.sizeToFit()
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
		super.init(style: style, reuseIdentifier: reuseIdentifier)
		setupItem()
		
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
	
	public func refResh(_ model: FeedResponse) {
		nameLabel.text = model.name
		priceLabel.text = model.price
		infoTextLabel.text = model.infoText
		cityLabel.text = model.city
		cilientNameLabel.text = model.clientName
		switch model.odeme {
		case .offline:
			return odemeLabel.text = "Odeme Offline"
		case .online:
			return odemeLabel.text = "Odeme Online"
		}
	}
	
	//MARK: - setupItem
	private func setupItem() {
		//nameLabel
		addSubview(nameLabel)
		nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 15).isActive = true
		nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
		nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
		
		//cityLabel
		addSubview(cityLabel)
		cityLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10).isActive = true
		cityLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
		
		//priceLabel
		addSubview(priceLabel)
		priceLabel.topAnchor.constraint(equalTo: cityLabel.bottomAnchor, constant: 10).isActive = true
		priceLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
		priceLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
//		
//		//odemeLabel
//		addSubview(odemeLabel)
//		odemeLabel.topAnchor.constraint(equalTo: cityLabel.bottomAnchor, constant: 10).isActive = true
//		odemeLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 120).isActive = true
//		
		//cilientNameLabel
		addSubview(cilientNameLabel)
		cilientNameLabel.topAnchor.constraint(equalTo: priceLabel.bottomAnchor, constant: 10).isActive = true
		cilientNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
		
		//infoTextLabel
		addSubview(infoTextLabel)
		infoTextLabel.topAnchor.constraint(equalTo: cilientNameLabel.bottomAnchor, constant: 20).isActive = true
		infoTextLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
		infoTextLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
		
	}

}
