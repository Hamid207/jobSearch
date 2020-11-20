//
//  FavoritesViewController + Extension.swift
//  MarketApp.1
//
//  Created by Manafov Hamid on 11/18/20.
//  Copyright © 2020 Manafov Hamid. All rights reserved.
//

import UIKit

extension FavoritesViewController {
	
	func setupIem() {
		//tableView
		tableView.tableFooterView = UIView()
		tableView.delegate = self
		tableView.dataSource = self
		tableView.separatorStyle = .none
		tableView.register(FavoritesTableViewCell.self, forCellReuseIdentifier: "favoritesTableViewCellId")
		tableView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
		//createResumeTableView.sectionFooterHeight = 10
		tableView.sectionHeaderHeight = 10
		view.addSubview(tableView)
		tableView.translatesAutoresizingMaskIntoConstraints = false
		tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
		tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
		tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
		tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
	}
	
}

//MARK: - UITableViewDataSource
extension FavoritesViewController: UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return testArray.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		if let cell = tableView.dequeueReusableCell(withIdentifier: "favoritesTableViewCellId", for: indexPath) as? FavoritesTableViewCell {
			let item = testArray[indexPath.row]
			cell.refresh(item)
			return cell
		}
		return UITableViewCell()
	}
	
	
}

//MARK: - UITableViewDelegate
extension FavoritesViewController: UITableViewDelegate {
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		let item = testArray[indexPath.row]
		viewModel?.tapOnTheSgowDetail(testArray: item)
	}
	
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 170
	}
}
