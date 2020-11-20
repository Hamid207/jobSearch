//
//  MainViewController + Extension.swift
//  MarketApp.1
//
//  Created by Manafov Hamid on 11/9/20.
//  Copyright © 2020 Manafov Hamid. All rights reserved.
//

import UIKit

extension MainViewController {
	
	func setupView() {
	//MARK: - MAINCOLLECTIONVIEW
		mainCollectionView.delegate = self
		mainCollectionView.dataSource = self
		mainCollectionView.register(MainCollectionViewCell.self, forCellWithReuseIdentifier: "mainCollectionViewCellId")
		mainCollectionView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
		mainCollectionView.showsHorizontalScrollIndicator = false
		mainCollectionView.showsVerticalScrollIndicator = false
		view.addSubview(mainCollectionView)
		mainCollectionView.translatesAutoresizingMaskIntoConstraints = false
		mainCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
		mainCollectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
		mainCollectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
		mainCollectionView.heightAnchor.constraint(equalToConstant: 70).isActive = true
		
		
	//MARK - MAINTABLEVIEW
		mainTableView.delegate = self
		mainTableView.dataSource = self
		mainTableView.separatorStyle = .none
		mainTableView.register(MainTableViewViewCell.self, forCellReuseIdentifier: mainViewModel!.mainTableViewCellId)
		//mainTableView.register(SecondMainTableViewCell.self, forCellReuseIdentifier: mainViewModel!.secondTableVIewCellId)
		mainTableView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
//		mainTableView.rowHeight = UITableView.automaticDimension
//		mainTableView.estimatedRowHeight = 300
//		mainTableView.sectionFooterHeight = 10
		//mainTableView.sectionHeaderHeight = 15
		view.addSubview(mainTableView)
		mainTableView.translatesAutoresizingMaskIntoConstraints = false
		mainTableView.topAnchor.constraint(equalTo: mainCollectionView.bottomAnchor).isActive = true
		mainTableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
		mainTableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
		mainTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
	}
}

//MARK: - UICollectionViewDataSource
extension MainViewController: UITableViewDataSource {
	func numberOfSections(in tableView: UITableView) -> Int {
		return 1
	}

	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//		if section == 0 {
//			return 1
//		}
		return tesarray.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		if let cell = tableView.dequeueReusableCell(withIdentifier: mainViewModel!.mainTableViewCellId, for: indexPath) as? MainTableViewViewCell {
			let item = tesarray[indexPath.row]
			cell.refresh(item)
			return cell
		}
//		if indexPath.section == 1 {
//		
//		}
		
//		if let secondCell =  tableView.dequeueReusableCell(withIdentifier: mainViewModel!.secondTableVIewCellId, for: indexPath) as? SecondMainTableViewCell {
//			let item = collectionVIewARRayTest
//			secondCell.viewController = self
//			secondCell.names = item
//		}
		return UITableViewCell()
	}
	

//
	func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//		if section == 0 {
//			return "Vakansiya"
//		}
//		if section == 0 {
//			return ""
//		}
		return "Sizə uyğun elanlar"

	}
	
}

//MARK: - UITableViewDelegate
extension MainViewController: UITableViewDelegate {
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		let setArray = tesarray[indexPath.row]
		mainViewModel?.tapOnTheComment(testArray: setArray)
	}
	
		func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
	//		if indexPath.section == 0 {
	//			return 150
	//		}
			return 170
		}
}

//MARK: - ----------------------------------

//MARK: - UICollectionViewDataSource
extension MainViewController: UICollectionViewDataSource {
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return collectionVIewARRayTest.count
	}
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mainCollectionViewCellId", for: indexPath) as? MainCollectionViewCell {
			let item = collectionVIewARRayTest[indexPath.row]
			cell.nameLabel.text = item
			return cell
		}
		return UICollectionViewCell()
	}
}

//MARK: - UICollectionViewDelegate
extension MainViewController: UICollectionViewDelegate {
	func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
		switch indexPath.row {
		case 0:
			mainViewModel?.tapOnTheCreateResume()
		case 1:
			mainViewModel?.tapOnTheJobVacancy()
		case 2:
			mainViewModel?.tapOnTheIsAxtaranlar()
		default:
			break
		}
	}
}

//MARK: - UICollectionViewDelegateFlowLayout
extension MainViewController: UICollectionViewDelegateFlowLayout {
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
		return CGSize(width: view.frame.width * 0.4, height: view.frame.height * 0.4 )
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
		return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
	}
	
	

}




