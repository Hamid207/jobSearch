//
//  IshAxtaranlarViewController + Extension.swift
//  MarketApp.1
//
//  Created by Manafov Hamid on 11/18/20.
//  Copyright © 2020 Manafov Hamid. All rights reserved.
//

import UIKit

extension IshAxtaranlarViewController {
	
	func setupItem() {
		//tableView
		tableView.delegate = self
		tableView.dataSource = self
		tableView.separatorStyle = .singleLine
		tableView.register(JobSeekersTableViewCell.self, forCellReuseIdentifier: "jobSeekersTableViewCellId")
		tableView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
		//tableView.sectionFooterHeight = 10
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
extension IshAxtaranlarViewController: UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return tesarray.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		if let cell = tableView.dequeueReusableCell(withIdentifier: "jobSeekersTableViewCellId", for: indexPath) as? JobSeekersTableViewCell {
			let item = tesarray[indexPath.row]
			cell.refresh(item)
			return cell
		}
		return UITableViewCell()
	}
}

//MARK: - UITableViewDelegate
extension IshAxtaranlarViewController: UITableViewDelegate {
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		let item = tesarray[indexPath.row]
		viewModel?.tapOnTheDetailVc(testArray: item)
	}
	
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 200
	}
}
