//
//  UserTableViewCell.swift
//  MarketApp.1
//
//  Created by Manafov Hamid on 11/17/20.
//  Copyright © 2020 Manafov Hamid. All rights reserved.
//

import UIKit

class UserTableViewCell: UITableViewCell {
	
	var buttonTarget = false
	
	//userImage
	private let userImage: UIImageView = {
		let image = UIImageView()
		image.translatesAutoresizingMaskIntoConstraints = false
		image.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
		image.contentMode = .scaleAspectFill
		image.clipsToBounds = true
		image.image = UIImage(named: "user1")
		image.heightAnchor.constraint(equalToConstant: 100).isActive = true
		image.widthAnchor.constraint(equalToConstant: 100).isActive = true
		image.layer.cornerRadius = 50
		return image
	}()
	
	//nameLabel
	 private let nameLabel: UILabel = {
		let label = UILabel()
		label.font = UIFont.systemFont(ofSize: 15, weight: .light)
		label.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
		label.textAlignment = .left
		label.minimumScaleFactor = 0.2
		label.numberOfLines = 3
		label.sizeToFit()
		label.lineBreakMode = .byWordWrapping
		label.adjustsFontSizeToFitWidth = true
		label.text = "Ad"
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	//nameTextField
	private let nameTextFiled: UITextField = {
		let textFiled = UITextField()
		textFiled.font = UIFont.systemFont(ofSize: 18, weight: .regular)
		textFiled.placeholder = "Daxil et..."
		textFiled.translatesAutoresizingMaskIntoConstraints = false
		return textFiled
	}()
	
	//namelineVIew
	private let namelineVIew: UIView = {
		let view = UIView()
		view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
		view.translatesAutoresizingMaskIntoConstraints = false
		return view
	}()
	
	//------------------------lastName
	
	//lastNameLabel
	 private let lastNameLabel: UILabel = {
		let label = UILabel()
		label.font = UIFont.systemFont(ofSize: 15, weight: .light)
		label.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
		label.textAlignment = .left
		label.minimumScaleFactor = 0.2
		label.numberOfLines = 3
		label.sizeToFit()
		label.lineBreakMode = .byWordWrapping
		label.adjustsFontSizeToFitWidth = true
		label.text = "Soyad"
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	//lastNameTextField
	private let lastNameTextFiled: UITextField = {
		let textFiled = UITextField()
		textFiled.font = UIFont.systemFont(ofSize: 18, weight: .regular)
		textFiled.placeholder = "Daxil et..."
		textFiled.translatesAutoresizingMaskIntoConstraints = false
		return textFiled
	}()
	
	//lastNamelineVIew
	private let lastNamelineVIew: UIView = {
		let view = UIView()
		view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
		view.translatesAutoresizingMaskIntoConstraints = false
		return view
	}()
	
	//--------------------userCity
	
	//cinsSegmentControl
	//heleki lazim deyil
//	private let cinsSegmentControl: UISegmentedControl = {
//		let segmentArray = ["Kishi", "2"]
//		var segment = UISegmentedControl()
//		segment = UISegmentedControl(items: segmentArray)
//		segment.translatesAutoresizingMaskIntoConstraints = false
//		return segment
//	}()
//
	
	//userCityLabel
	 private let userCityLabel: UILabel = {
		let label = UILabel()
		label.font = UIFont.systemFont(ofSize: 15, weight: .light)
		label.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
		label.textAlignment = .left
		label.minimumScaleFactor = 0.2
		label.numberOfLines = 3
		label.sizeToFit()
		label.lineBreakMode = .byWordWrapping
		label.adjustsFontSizeToFitWidth = true
		label.text = "Şəhər"
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	//cityTextField
	private let cityTextFiled: UITextField = {
		let textFiled = UITextField()
		textFiled.font = UIFont.systemFont(ofSize: 18, weight: .regular)
		textFiled.placeholder = "Daxil et..."
		textFiled.translatesAutoresizingMaskIntoConstraints = false
		return textFiled
	}()
	
	//citylineVIew
	private let citylineVIew: UIView = {
		let view = UIView()
		view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
		view.translatesAutoresizingMaskIntoConstraints = false
		return view
	}()
	
	//--------------------date
	
	//dateLabel
	 private let dateLabel: UILabel = {
		let label = UILabel()
		label.font = UIFont.systemFont(ofSize: 15, weight: .light)
		label.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
		label.textAlignment = .left
		label.minimumScaleFactor = 0.2
		label.numberOfLines = 3
		label.sizeToFit()
		label.lineBreakMode = .byWordWrapping
		label.adjustsFontSizeToFitWidth = true
		label.text = "Dogum tarixi"
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	//dateTextField
	private let dateTextField: UITextField = {
		let textFiled = UITextField()
		textFiled.font = UIFont.systemFont(ofSize: 18, weight: .regular)
		textFiled.placeholder = "Daxil et..."
		textFiled.translatesAutoresizingMaskIntoConstraints = false
		return textFiled
	}()
	
	//datelineVIew
	private let dateLineVIew: UIView = {
		let view = UIView()
		view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
		view.translatesAutoresizingMaskIntoConstraints = false
		return view
	}()
	
	//--------------------email
	
	//emailLabel
	 private let emailLabel: UILabel = {
		let label = UILabel()
		label.font = UIFont.systemFont(ofSize: 15, weight: .light)
		label.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
		label.textAlignment = .left
		label.minimumScaleFactor = 0.2
		label.numberOfLines = 3
		label.sizeToFit()
		label.lineBreakMode = .byWordWrapping
		label.adjustsFontSizeToFitWidth = true
		label.text = "Email"
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	//emailTextField
	private let emailTextField: UITextField = {
		let textFiled = UITextField()
		textFiled.font = UIFont.systemFont(ofSize: 18, weight: .regular)
		textFiled.placeholder = "Daxil et..."
		textFiled.translatesAutoresizingMaskIntoConstraints = false
		return textFiled
	}()
	
	//emailLineVIew
	private let emailLineVIew: UIView = {
		let view = UIView()
		view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
		view.translatesAutoresizingMaskIntoConstraints = false
		return view
	}()
	
	//--------------------number
	
	//numberLabel
	 private let numberLabel: UILabel = {
		let label = UILabel()
		label.font = UIFont.systemFont(ofSize: 15, weight: .light)
		label.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
		label.textAlignment = .left
		label.minimumScaleFactor = 0.2
		label.numberOfLines = 3
		label.sizeToFit()
		label.lineBreakMode = .byWordWrapping
		label.adjustsFontSizeToFitWidth = true
		label.text = "Telefon"
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	//numberTextField
	private let numberTextField: UITextField = {
		let textFiled = UITextField()
		textFiled.font = UIFont.systemFont(ofSize: 18, weight: .regular)
		textFiled.placeholder = "Daxil et..."
		textFiled.translatesAutoresizingMaskIntoConstraints = false
		return textFiled
	}()
	
	//numberLineVIew
	private let numberLineVIew: UIView = {
		let view = UIView()
		view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
		view.translatesAutoresizingMaskIntoConstraints = false
		return view
	}()
	
	override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
		super.init(style: style, reuseIdentifier: reuseIdentifier)
		setupItem()
		//textLineViewColor()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
	
	@objc func textrFirledTarget() { // bu isdemir sora bax
//					namelineVIew.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
		if nameTextFiled.text == "Hamid" {
			namelineVIew.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
		}
		if buttonTarget == false {
			namelineVIew.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
			buttonTarget = true
		}else if buttonTarget == true {
			namelineVIew.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
			buttonTarget = false
		}
	}
	
	
	func setupItem() {
		//-------------
		//userImage
		addSubview(userImage)
		userImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
		userImage.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
		
		//nameLabel
		addSubview(nameLabel)
		nameLabel.topAnchor.constraint(equalTo: userImage.bottomAnchor, constant: 30).isActive = true
		nameLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
		nameLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
		
		//nameTextFiled
		addSubview(nameTextFiled)
		nameTextFiled.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: -20).isActive = true
		nameTextFiled.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor).isActive = true
		nameTextFiled.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor).isActive = true
		nameTextFiled.heightAnchor.constraint(equalToConstant: 80).isActive = true
		//nameTextFiled.addTarget(self, action: #selector(textrFirledTarget), for: .valueChanged)
		
		//nameLineView
		addSubview(namelineVIew)
		namelineVIew.topAnchor.constraint(equalTo: nameTextFiled.bottomAnchor, constant: -15).isActive = true
		namelineVIew.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
		namelineVIew.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor).isActive = true
		namelineVIew.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
		
		//-------------lastName
		
		//lastNameLabel
		addSubview(lastNameLabel)
		lastNameLabel.topAnchor.constraint(equalTo: namelineVIew.bottomAnchor, constant: 20).isActive = true
		lastNameLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
		lastNameLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
		
		//lastNameTextFiled
		addSubview(lastNameTextFiled)
		lastNameTextFiled.topAnchor.constraint(equalTo: lastNameLabel.bottomAnchor, constant: -20).isActive = true
		lastNameTextFiled.leadingAnchor.constraint(equalTo: lastNameLabel.leadingAnchor).isActive = true
		lastNameTextFiled.trailingAnchor.constraint(equalTo: lastNameLabel.trailingAnchor).isActive = true
		lastNameTextFiled.heightAnchor.constraint(equalToConstant: 80).isActive = true
		
		//lastNamelineView
		addSubview(lastNamelineVIew)
		lastNamelineVIew.topAnchor.constraint(equalTo: lastNameTextFiled.bottomAnchor, constant: -15).isActive = true
		lastNamelineVIew.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
		lastNamelineVIew.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor).isActive = true
		lastNamelineVIew.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
		
		//-------------userCity
		
		//userCityLabel
		addSubview(userCityLabel)
		userCityLabel.topAnchor.constraint(equalTo: lastNamelineVIew.bottomAnchor, constant: 20).isActive = true
		userCityLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
		userCityLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
		
		//cityTextFiled
		addSubview(cityTextFiled)
		cityTextFiled.topAnchor.constraint(equalTo: userCityLabel.bottomAnchor, constant: -20).isActive = true
		cityTextFiled.leadingAnchor.constraint(equalTo: userCityLabel.leadingAnchor).isActive = true
		cityTextFiled.trailingAnchor.constraint(equalTo: userCityLabel.trailingAnchor).isActive = true
		cityTextFiled.heightAnchor.constraint(equalToConstant: 80).isActive = true
		
		//citylineVIew
		addSubview(citylineVIew)
		citylineVIew.topAnchor.constraint(equalTo: cityTextFiled.bottomAnchor, constant: -15).isActive = true
		citylineVIew.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
		citylineVIew.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor).isActive = true
		citylineVIew.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
		
		//-------------date
		
		//dateLabel
		addSubview(dateLabel)
		dateLabel.topAnchor.constraint(equalTo: citylineVIew.bottomAnchor, constant: 20).isActive = true
		dateLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
		dateLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
		
		//dateTextField
		addSubview(dateTextField)
		dateTextField.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: -20).isActive = true
		dateTextField.leadingAnchor.constraint(equalTo: dateLabel.leadingAnchor).isActive = true
		dateTextField.trailingAnchor.constraint(equalTo: dateLabel.trailingAnchor).isActive = true
		dateTextField.heightAnchor.constraint(equalToConstant: 80).isActive = true
		
		//dateLineVIew
		addSubview(dateLineVIew)
		dateLineVIew.topAnchor.constraint(equalTo: dateTextField.bottomAnchor, constant: -15).isActive = true
		dateLineVIew.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
		dateLineVIew.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor).isActive = true
		dateLineVIew.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
		
		//-------------email
		
		//dateLabel
		addSubview(emailLabel)
		emailLabel.topAnchor.constraint(equalTo: dateLineVIew.bottomAnchor, constant: 20).isActive = true
		emailLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
		emailLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
		
		//dateTextField
		addSubview(emailTextField)
		emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: -20).isActive = true
		emailTextField.leadingAnchor.constraint(equalTo: emailLabel.leadingAnchor).isActive = true
		emailTextField.trailingAnchor.constraint(equalTo: emailLabel.trailingAnchor).isActive = true
		emailTextField.heightAnchor.constraint(equalToConstant: 80).isActive = true
		
		//emailLineVIew
		addSubview(emailLineVIew)
		emailLineVIew.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: -15).isActive = true
		emailLineVIew.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
		emailLineVIew.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor).isActive = true
		emailLineVIew.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
		
		//-------------number
		
		//numberLabel
		addSubview(numberLabel)
		numberLabel.topAnchor.constraint(equalTo: emailLineVIew.bottomAnchor, constant: 20).isActive = true
		numberLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
		numberLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
		
		//numberTextField
		addSubview(numberTextField)
		numberTextField.topAnchor.constraint(equalTo: numberLabel.bottomAnchor, constant: -20).isActive = true
		numberTextField.leadingAnchor.constraint(equalTo: numberLabel.leadingAnchor).isActive = true
		numberTextField.trailingAnchor.constraint(equalTo: numberLabel.trailingAnchor).isActive = true
		numberTextField.heightAnchor.constraint(equalToConstant: 80).isActive = true
		
		//numberLineVIew
		addSubview(numberLineVIew)
		numberLineVIew.topAnchor.constraint(equalTo: numberTextField.bottomAnchor, constant: -15).isActive = true
		numberLineVIew.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
		numberLineVIew.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor).isActive = true
		numberLineVIew.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
	}
	
}
