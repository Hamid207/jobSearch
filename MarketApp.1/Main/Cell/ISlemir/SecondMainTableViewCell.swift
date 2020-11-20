//
//  SecondMainTableViewCell.swift
//  MarketApp.1
//
//  Created by Manafov Hamid on 11/11/20.
//  Copyright © 2020 Manafov Hamid. All rights reserved.
//

import UIKit

class SecondMainTableViewCell: UITableViewCell {
	
	var names: [String]? {
		didSet {
			collectionView.reloadData()
		}
	}

	var viewController = UIViewController()
	var viewModel: MainViewModelProtocol?
	
	let  collectionView: UICollectionView = {
		let layout = UICollectionViewFlowLayout()
		layout.minimumLineSpacing = 10
		layout.scrollDirection = .horizontal
		let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
		cv.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
		return cv
	}()
	func rreturn() -> UIViewController {
		return viewController
	}
	
	let secondMainCollectionVIewCellId = "secondMainCollectionVIewCellId"

	override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
		super.init(style: style, reuseIdentifier: reuseIdentifier)
		setup()
		//viewModel = MainViewModel(router: nil)
	}
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	func setup() {
		backgroundColor = .red
		addSubview(collectionView)
		collectionView.delegate = self
		collectionView.dataSource = self
		collectionView.translatesAutoresizingMaskIntoConstraints = false
		collectionView.topAnchor.constraint(equalTo: topAnchor).isActive = true
		collectionView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
		collectionView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
		collectionView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
		collectionView.register(IconSecondMainCollectionViewCell.self, forCellWithReuseIdentifier: secondMainCollectionVIewCellId)
		collectionView.showsHorizontalScrollIndicator = false
	}
 }

//MARK: - UICollectionViewDataSource
extension SecondMainTableViewCell: UICollectionViewDataSource {
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return 3
	}

	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: secondMainCollectionVIewCellId, for: indexPath) as? IconSecondMainCollectionViewCell {
			let item = names?[indexPath.row]
			cell.nameLabel.text = item
			return cell
		}
		return UICollectionViewCell()
	}
}

//MARK: - UICollectionViewDelegate
extension SecondMainTableViewCell: UICollectionViewDelegate {
	func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
		viewModel?.tapOnTheJobVacancy() // bu idedemir bura cell olduquna gore diysen deqiq deyil
		let vc1 = CreateResumeViewController()
		let vc2 = JobVacancyViewController()
		switch indexPath.row {
		case 0:
			viewController.navigationController?.pushViewController(vc1, animated: true)
		case 1:
			viewController.navigationController?.pushViewController(vc2, animated: true)
//		case 2:
//			viewController.navigationController?.pushViewController(<#T##viewController: UIViewController##UIViewController#>, animated: <#T##Bool#>)
		default:
			break
		}
		let index = indexPath.row
		print("cell \(index)")
	}
}

extension SecondMainTableViewCell: UICollectionViewDelegateFlowLayout {
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
		return CGSize(width: frame.width * 0.3, height: frame.height * 0.9 )
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
		return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
	}

}
